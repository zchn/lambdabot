module HelloModule (theModule) where

import IRC

newtype HelloModule = HelloModule ()

theModule :: MODULE
theModule = MODULE helloModule

helloModule :: HelloModule
helloModule = HelloModule ()

instance Module HelloModule where
    moduleName   _ = return "hello"
    moduleHelp   _ _ = return "hello world plugin"
    commands     _ = return ["hello","goodbye"]
    process      _ _ target _ rest = ircPrivmsg target ("Hello world. " ++ rest)

