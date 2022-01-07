
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MX31_PIN_USBOTG_CLK ;
 int MX31_PIN_USBOTG_DATA0 ;
 int MX31_PIN_USBOTG_DATA1 ;
 int MX31_PIN_USBOTG_DATA2 ;
 int MX31_PIN_USBOTG_DATA3 ;
 int MX31_PIN_USBOTG_DATA4 ;
 int MX31_PIN_USBOTG_DATA5 ;
 int MX31_PIN_USBOTG_DATA6 ;
 int MX31_PIN_USBOTG_DATA7 ;
 int MX31_PIN_USBOTG_DIR ;
 int MX31_PIN_USBOTG_NXT ;
 int MX31_PIN_USBOTG_STP ;
 int OTG_EN_B ;
 int USB_PAD_CFG ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 int mxc_iomux_set_pad (int ,int ) ;

__attribute__((used)) static void moboard_usbotg_init(void)
{
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA0, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA1, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA2, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA3, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA4, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA5, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA6, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA7, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_CLK, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DIR, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_NXT, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_STP, USB_PAD_CFG);

 gpio_request(OTG_EN_B, "usb-udc-en");
 gpio_direction_output(OTG_EN_B, 0);
}
