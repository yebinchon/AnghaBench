
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int D_USBO ;
 int PDEBUG (int ,char*,int ,int ) ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_w_val(struct usb_device *dev, __u16 index, __u8 value)
{
 int ret;

 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
         0,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         value, index, ((void*)0), 0, 500);
 PDEBUG(D_USBO, "reg write: 0x%02x:0x%02x", index, value);
 if (ret < 0)
  err("reg write: error %d", ret);
}
