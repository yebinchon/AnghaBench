
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int usb_buf; struct usb_device* dev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int ,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_r(struct gspca_dev *gspca_dev, u16 value, u16 index)
{
 struct usb_device *dev = gspca_dev->dev;
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
   0x03,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value,
   index,
   gspca_dev->usb_buf,
   2,
   1000);
 if (ret < 0) {
  err("reg_w err %d", ret);
  gspca_dev->usb_err = ret;
 }
}
