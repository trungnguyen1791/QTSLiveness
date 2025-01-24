#
#  Be sure to run `pod spec lint LivenessUtility.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "QTSLiveness"
  spec.version      = "1.2.2"
  spec.summary      = "A short description of QTSLiveness."
  spec.homepage     = "https://github.com/trungnguyen1791/QTSLiveness"
  spec.author           = { 'My Name' => 'myemail@example.com' }
  spec.license      = "MIT"
  
  spec.platform = :ios
  spec.ios.deployment_target = "11.0"

  spec.source = { :http => "https://github.com/trungnguyen1791/QTSLiveness/releases/download/1.2.2/QTSLiveness.zip" }
  spec.vendored_frameworks = 'QTSLiveness/QTSLiveness.xcframework'
  spec.dependency "ObjectMapper", '~> 4.2'
  spec.dependency "KeychainSwift", '~> 19.0'
  spec.dependency "CryptoSwift", '~> 1.8.2'
  spec.dependency "SignManager", '~> 1.0.5'
  

  spec.swift_version = "5.0"
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


end
