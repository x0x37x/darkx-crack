local oldRand; oldRand = hookfunction(math.random, function(min, max)
  	if checkcaller() then
      	print(min, max)
      	return min
  	end
  	return oldRand(min, max)
end)

local oldHttp; oldHttp = hookfunction(game.HttpGet, function(self, url)
  	if url:match("api.dark") then
		warn("Rejecting request to", url)
		return "v8Ya2UswRWfwQPSyvAj58VyOSmVF9mzApoR516PN91JkgJYBoSyHUaCpRPUA1rs5v9t1Ke16Elr8jgyvAj58VyE3kPVrKPd7u5rcAqARcHOTbD6UZIhATW1o7dov3IOm15cZVvVYsuCJLp8Upw6Vll9nuxapJ9y61VsNBXoXnrGt8e4MqcN26eu6P5TXTjRFlcnkxTQvH1OsRmTggCyt8sr"
  	end
	if url:match("newintestbeta") then
		warn("Redirecting to UI library backup")
		url = "https://raw.githubusercontent.com/x0x37x/darkx-crack/refs/heads/main/ui.lua"
	end
  	return oldHttp(self, url)
end)

loadstring(game:HttpGet('https://raw.githubusercontent.com/x0x37x/darkx-crack/refs/heads/main/obfuscated.lua'))()
