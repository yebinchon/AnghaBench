
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void
nc_vendor_write(struct usbnet *dev, u8 req, u8 regnum, u16 value)
{
 usb_control_msg(dev->udev,
  usb_sndctrlpipe(dev->udev, 0),
  req,
  USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  value, regnum,
  ((void*)0), 0,
  USB_CTRL_SET_TIMEOUT);
}
