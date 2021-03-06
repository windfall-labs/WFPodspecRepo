Pod::Spec.new do |s|

  s.name         = "WindfallSDK"
  s.version      = "0.7.7"
  s.summary      = "Windfall Receipt Scanning SDK"

  s.description  = <<-DESC
This is the Windfall Receipt Scanning SDK
                   DESC

  s.homepage     = "https://github.com/windfall-labs/windfallsdk-ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "Danny Panzer" => "danny@windfall.me" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  
  s.source       = { :git => "https://github.com/windfall-labs/windfallsdk-ios.git", :tag => "#{s.version}" }

  s.vendored_frameworks = ["WindfallSDK.framework","BRLegacyOCR.framework"]

  s.resources = ["WindfallSDK.framework/*.zzip", "WindfallSDK.framework/windfall-intermediate.der", "WindfallSDK.framework/*.nib", "WindfallSDK.framework/*.png", "WindfallSDK.framework/*.wav", "BRLegacyOCR.framework/*.zzip"]
  
  s.dependency 'AFNetworking', '~> 2.0'
  s.dependency 'libextobjc', '~> 0.4'
  s.dependency 'GPUImage', '~> 0.1'
  s.dependency 'MBProgressHUD'
  s.dependency 'SimpleKeychain', '~> 0.7'
  s.dependency 'UIAlertController-BetterConstructor', '~> 0.1'

  s.user_target_xcconfig = { 'WINDFALL_VERSION' => s.version }

end
