local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local plr = game:GetService('Players').LocalPlayer
local hum = plr.Character:FindFirstChildOfClass('Humanoid')
local uis = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Noclipping = nil

if game.PlaceId == 32990482 then
    local MainWindow = Rayfield:CreateWindow({
        Name = "🌊 Flood Escape: Classic 🌊",
        LoadingTitle = "Obscure Hub",
        LoadingSubtitle = "by xreadora",
        Theme = "Serenity",
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
     
        ConfigurationSaving = {
           Enabled = true,
           FolderName = nil,
           FileName = "obscurehub"
        },
     
        Discord = {
           Enabled = false,
           Invite = "noinvitelink",
           RememberJoins = true
        },
     
        KeySystem = true,
        KeySettings = {
           Title = "Flood Escape: Classic | Key",
           Subtitle = "Key System",
           Note = "bit.ly/obscurekey",
           FileName = "obscurehubkey",
           SaveKey = false, 
           GrabKeyFromSite = true,
           Key = {"https://pastebin.com/raw/NQwYFdur"}
        }
     })

     local MainTab = MainWindow:CreateTab("🏠 Exploits", nil)
     local TeleportTab = MainWindow:CreateTab("🏃‍♀️ Teleports", nil)
     local MainMainSection = MainTab:CreateSection("Main")
     local LobbyTeleportSection = TeleportTab:CreateSection("Lobby")

     Rayfield:Notify({
        Title = "Script Executed",
        Content = "obscure gui omg",
        Duration = 6.5,
        Image = nil,
        Actions = { -- Notification Buttons
     
           Alright = { -- Duplicate this table (or remove it) to add and remove buttons to the notification.
              Name = "Okay!",
              Callback = function()
                 --print("The user tapped Okay!")
              end
           },

     
     },
     })

     local WalkSpeedSlider = MainTab:CreateSlider({
        Name = "walkspeed",
        Range = {16, 42},
        Increment = 1,
        Suffix = nil,
        CurrentValue = 16,
        Flag = "WalkSpeedSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            hum.WalkSpeed = Value
        end,
     })

     local JumpPowerSlider = MainTab:CreateSlider({
        Name = "jumppower",
        Range = {50, 200},
        Increment = 5,
        Suffix = nil,
        CurrentValue = 50,
        Flag = "JumpPowerSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            hum.JumpPower = Value
        end,
     })

    local Divider = MainTab:CreateDivider()

    local Respawn = MainTab:CreateButton({
        Name = "respawn",
        Callback = function()
            workspace.svcl_com.Respawn:FireServer()
        end,
     })

	 local Noclip = MainTab:CreateButton({
      Name = "noclip (execute script)",
      Callback = function()
         loadstring(game:HttpGet('https://pastebin.com/raw/7SGz5hCc'))()
      end,
    })


     local ItemSection = MainTab:CreateSection("Free Items")

     local giveExtraItemInput = MainTab:CreateInput({
        Name = "extra",
        CurrentValue = "Trophy",
        PlaceholderText = "item name in here",
        RemoveTextAfterFocusLost = true,
        Flag = "freeExtraItemInput",
        Callback = function(Text)
            local args = {
                [1] = Text
              }
          
            workspace.svcl_com.ShopExtra:FireServer(unpack(args))
        end,
     })

     local giveTauntItemInput = MainTab:CreateInput({
        Name = "taunt",
        CurrentValue = "Bucket",
        PlaceholderText = "item name in here",
        RemoveTextAfterFocusLost = true,
        Flag = "freeTauntItemInput",
        Callback = function(Text)
            local args = {
                [1] = Text
              }
          
            workspace.svcl_com.ShopTaunt:FireServer(unpack(args))
        end,
     })

     local giveParticleItemInput = MainTab:CreateInput({
        Name = "particles",
        CurrentValue = "GreenFire",
        PlaceholderText = "item name in here",
        RemoveTextAfterFocusLost = true,
        Flag = "freeParticletItemInput",
        Callback = function(Text)
            local args = {
                [1] = Text
              }
          
            workspace.svcl_com.ShopParticles:FireServer(unpack(args))
        end,
     })



     -- TELEPORTS TAB --

     local TeleportEasy = TeleportTab:CreateButton({
        Name = "teleport easy",
        Callback = function()
            hum.Parent.HumanoidRootPart.CFrame = workspace.Easy.Entry.LiftEntryInfo.CFrame
        end,
     })

     local TeleportMedium = TeleportTab:CreateButton({
        Name = "teleport medium",
        Callback = function()
            hum.Parent.HumanoidRootPart.CFrame = workspace.Medium.Entry.LiftEntryInfo.CFrame
        end,
     })

     local TeleportHard = TeleportTab:CreateButton({
        Name = "teleport hard",
        Callback = function()
            hum.Parent.HumanoidRootPart.CFrame = workspace.Hard.Entry.LiftEntryInfo.CFrame
        end,
     })

     local EndTeleportSection = TeleportTab:CreateSection("Ending")

     local TeleportEndEasy = TeleportTab:CreateButton({
        Name = "teleport end easy",
        Callback = function()
            hum.Parent.HumanoidRootPart.CFrame = CFrame.new(-230.611328, 157.59996, 64.6321106, -0.0862551033, -8.86108396e-08, 0.9962731, -5.55807524e-08, 1, 8.41302636e-08, -0.9962731, -4.81169415e-08, -0.0862551033)
        end
        })

     local TeleportEndMedium = TeleportTab:CreateButton({
        Name = "teleport end medium",
        Callback = function()
            hum.Parent.HumanoidRootPart.CFrame = CFrame.new(-235.480118, 157.59996, 191.888733, -0.27990219, 2.52354759e-09, 0.960028529, 4.78580766e-08, 1, 1.13246976e-08, -0.960028529, 4.91149272e-08, -0.27990219)
        end,
     })

     local TeleportEndHard = TeleportTab:CreateButton({
        Name = "teleport end hard",
        Callback = function()
            hum.Parent.HumanoidRootPart.CFrame = CFrame.new(-233.130829, 157.59996, 321.721436, 0.683897078, -4.65786663e-08, 0.729578495, 3.52729792e-08, 1, 3.0778839e-08, -0.729578495, 4.6848494e-09, 0.683897078)
        end,
     })
else
    Rayfield:Notify({
        Title = "Wrong Game!",
        Content = "You are in the wrong game, You are supposed to be in Flood Escape: Classic!",
        Duration = 6.5,
        Image = nil,
        Actions = { -- Notification Buttons
     
           Alright = { -- Duplicate this table (or remove it) to add and remove buttons to the notification.
              Name = "Okay!",
              Callback = function()
                 --print("The user tapped Okay!")
              end
           },

     
     },
     })
end