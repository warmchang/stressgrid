defmodule Stressgrid.Generator.Mixfile do
  use Mix.Project

  def project do
    [
      app: :generator,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Stressgrid.Generator.Application, []}
    ]
  end

  defp deps do
    [
      {:gun, "~> 1.3.0"},
      {:hdr_histogram, "~> 0.3.2"},
      {:jason, "~> 1.1"},
      {:bertex, "~> 1.3"},
      {:dialyxir, "~> 1.0.0-rc.7", runtime: false}
    ]
  end
end
