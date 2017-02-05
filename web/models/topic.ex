defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    # relate app to know what is going on with the DB
    # hey phoenix, look in postgres DB, find table topics and there should be a field called title with type string
    field :title, :string
  end

  def changeset(struct, params \\ %{}) do
    # validate model before insertion of data
    # challenging
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
