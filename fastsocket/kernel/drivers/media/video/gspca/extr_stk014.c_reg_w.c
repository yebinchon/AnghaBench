
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; struct usb_device* dev; } ;
typedef int __u16 ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
   __u16 index, __u16 value)
{
 struct usb_device *dev = gspca_dev->dev;
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
   0x01,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value,
   index,
   ((void*)0),
   0,
   500);
 if (ret < 0) {
  err("reg_w err %d", ret);
  gspca_dev->usb_err = ret;
 }
}
