workflow "Notifications" {
  on = "push"
  resolves = "Discord"
}

action "Discord" {
  uses = "docker://cirrusactions/discord:latest"
  secrets = [ "DISCORD_WEBHOOK" ]
}
