
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int HZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int qcm_stv_setb(struct usb_device *dev, u16 reg, u8 val)
{
 int ret;


 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
  0x04, USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
  reg, 0, &val, 1, 3*HZ);
 return ret;
}
