require "test_wrapper/version"
require 'httparty'

module TestWrapper
  class Error < StandardError; end
  include HTTParty
  base_uri "animatedgif.me"

  def self.find(id)
    get("/gifs/#{id}.json")
  end



end
