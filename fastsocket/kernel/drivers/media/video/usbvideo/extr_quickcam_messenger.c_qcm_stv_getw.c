
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef int __le16 ;


 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,unsigned short,int ,int *,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int qcm_stv_getw(struct usb_device *dev, unsigned short reg,
       __le16 *val)
{
 int ret;


 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
  0x04, USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
  reg, 0, val, 2, 3*HZ);
 return ret;
}
