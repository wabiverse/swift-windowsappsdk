// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

public enum __IMPL_Microsoft_UI_Content {
    public enum IContentSiteBridgeBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CContent_CIContentSiteBridge
        public typealias SwiftABI = __ABI_Microsoft_UI_Content.IContentSiteBridge
        public typealias SwiftProjection = AnyIContentSiteBridge
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IContentSiteBridgeImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Content.IContentSiteBridgeVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class IContentSiteBridgeImpl: IContentSiteBridge, WinRTAbiImpl {
        fileprivate typealias Bridge = IContentSiteBridgeBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.content.icontentsitebridge.dispatcherqueue)
        fileprivate var dispatcherQueue : WinAppSDK.DispatcherQueue! {
            get { try! _default.get_DispatcherQueueImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.content.icontentsitebridge.layoutdirectionoverride)
        fileprivate var layoutDirectionOverride : ContentLayoutDirection? {
            get { try! _default.get_LayoutDirectionOverrideImpl() }
            set { try! _default.put_LayoutDirectionOverrideImpl(newValue) }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.content.icontentsitebridge.overridescale)
        fileprivate var overrideScale : Float {
            get { try! _default.get_OverrideScaleImpl() }
            set { try! _default.put_OverrideScaleImpl(newValue) }
        }

        private lazy var _IClosable: __ABI_Windows_Foundation.IClosable! = getInterfaceForCaching()
        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.content.icontentsitebridge.close)
        fileprivate func close() throws {
            try _IClosable.CloseImpl()
        }

    }

}
