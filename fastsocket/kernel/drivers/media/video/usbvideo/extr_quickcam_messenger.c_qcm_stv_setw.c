
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;
typedef int __le16 ;


 int HZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int qcm_stv_setw(struct usb_device *dev, u16 reg, __le16 val)
{
 int ret;


 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
  0x04, USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
  reg, 0, &val, 2, 3*HZ);
 return ret;
}
