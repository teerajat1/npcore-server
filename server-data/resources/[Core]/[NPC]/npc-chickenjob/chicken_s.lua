RegisterServerEvent('cunt:pay')
AddEventHandler('cunt:pay', function(money)
    local source = source
    local LocalPlayer = exports['urp-base']:getModule('LocalPlayer')
    if money ~= nil then
       TriggerClientEvent('urp-ac:checkforban', source, money)
       TriggerClientEvent('DoLongHudText', source, 'You got $'.. money .. ' for 2 chicken', 1)
    end
end)

RegisterServerEvent('urp-chickenjob:reward')
AddEventHandler('urp-chickenjob:reward', function()
    StartResource('urp-ac')
end)

RegisterServerEvent('URP-Armour:Server:RefreshCurrentArmour')
AddEventHandler('URP-Armour:Server:RefreshCurrentArmour', function(updateArmour, cid)
    local src = source
    exports.ghmattimysql:execute("UPDATE __characters SET armor = @armor WHERE id = @id", { 
        ['@id'] = cid,
        ['@armor'] = tonumber(updateArmour)
    })
end)

-- RegisterServerEvent('URP-Health:Server:RefreshCurrentArmour')
-- AddEventHandler('URP-Health:Server:RefreshCurrentArmour', function(updateHealth, cid)
--     local src = source
--     MySQL.Async.execute("UPDATE __characters SET health = @health WHERE id = @id", { 
--         ['@id'] = cid,
--         ['@health'] = tonumber(updateHealth)
--     })
-- end)

RegisterServerEvent('URP-Stress:Server:RefreshCurrentArmour')
AddEventHandler('URP-Stress:Server:RefreshCurrentArmour', function(updateStress, cid)
    local src = source
    exports.ghmattimysql:execute("UPDATE __characters SET stress = @stress WHERE id = @id", { 
        ['@id'] = cid,
        ['@stress'] = tonumber(updateStress)
    })
end)

RegisterServerEvent('URP-Food:Server:RefreshCurrentArmour')
AddEventHandler('URP-Food:Server:RefreshCurrentArmour', function(updateFood, cid)
    local src = source
    exports.ghmattimysql:execute("UPDATE __characters SET food = @food WHERE id = @id", { 
        ['@id'] = cid,
        ['@food'] = tonumber(updateFood)
    })
end)

RegisterServerEvent('URP-Thirst:Server:RefreshCurrentArmour')
AddEventHandler('URP-Thirst:Server:RefreshCurrentArmour', function(updateThirst, cid)
    local src = source
    exports.ghmattimysql:execute("UPDATE __characters SET water = @water WHERE id = @id", { 
        ['@id'] = cid,
        ['@water'] = tonumber(updateThirst)
    })
end)

-- function sendToDiscord(name, message, color)
--     local connect = {
--           {
--               ["color"] = color,
--               ["title"] = "**".. name .."**",
--               ["description"] = message,
--               ["footer"] = {
--                   ["text"] = "Developed with ❤️ by Breasty and Leggy",
--               },
--           }
--       }
--     PerformHttpRequest('https://discord.com/api/webhooks/808805237045067826/jywqscDuiPDSWngaOZmsGEe--zRs7xsZXaPNZKMIie6D49wzwqIXBL1ERSMg3yTg3nFG', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
--   end

--   function sendToDiscord2(name, message, color)
--     local connect = {
--           {
--               ["color"] = color,
--               ["title"] = "**".. name .."**",
--               ["description"] = message,
--               ["footer"] = {
--                   ["text"] = "Developed with ❤️ by Breasty and Leggy",
--               },
--           }
--       }
--     PerformHttpRequest('https://discord.com/api/webhooks/808807726088060928/Kr8Y5i0_8VmfL4wL0I7lieXKAOfYVe7vcP27Aa8nqYtVnjLOUVsKbHByrXfUU9PR7tIv', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
--   end

-- RegisterServerEvent('urp-inventory:logItem')
-- AddEventHandler('urp-inventory:logItem', function(itemdata, amount)
--     print('ok')
--     sendToDiscord("Item Received", "**" .. GetPlayerName(source) .. "** has received an item. \n\n**Item ID : **" .. itemdata .. " \n\n**Amount : **" .. amount, 65280)
-- end)

-- RegisterServerEvent('urp-inventory:logCash')
-- AddEventHandler('urp-inventory:logCash', function(cash)
--     sendToDiscord2("Cash Received", "**" .. GetPlayerName(source) .. "** has received cash (GLOBALLY). \n\n**Cash : $**" .. cash, 65280)
-- end)