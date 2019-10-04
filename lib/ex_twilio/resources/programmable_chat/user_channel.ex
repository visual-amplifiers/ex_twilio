defmodule ExTwilio.ProgrammableChat.UserChannel do
  @moduledoc """
  Represents a User Channel resource in the Twilio Programmable Chat API.

  - [Twilio docs](https://www.twilio.com/docs/api/chat/rest/user-channels)
  """

  defstruct sid: nil,
            account_sid: nil,
            service_sid: nil,
            channel_sid: nil,
            unread_messages_count: nil,
            last_consumed_message_index: nil,
            channel: nil,
            member: nil

  use ExTwilio.Resource,
    import: [
      :stream,
      :all
    ]

  def resource_name, do: "Channels"
  def resource_collection_name, do: "channels"

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.ProgrammableChat.Service, key: :service},
      %ExTwilio.Parent{module: ExTwilio.ProgrammableChat.User, key: :user}
    ]
end
