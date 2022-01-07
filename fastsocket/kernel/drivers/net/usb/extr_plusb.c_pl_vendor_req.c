
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int udev; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static inline int
pl_vendor_req(struct usbnet *dev, u8 req, u8 val, u8 index)
{
 return usb_control_msg(dev->udev,
  usb_rcvctrlpipe(dev->udev, 0),
  req,
  USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  val, index,
  ((void*)0), 0,
  USB_CTRL_GET_TIMEOUT);
}
