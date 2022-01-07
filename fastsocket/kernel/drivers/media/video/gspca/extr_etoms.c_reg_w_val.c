
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {int * usb_buf; struct usb_device* dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_w_val(struct gspca_dev *gspca_dev,
   __u16 index,
   __u8 val)
{
 struct usb_device *dev = gspca_dev->dev;

 gspca_dev->usb_buf[0] = val;
 usb_control_msg(dev,
   usb_sndctrlpipe(dev, 0),
   0,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   0,
   index, gspca_dev->usb_buf, 1, 500);
}
