
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int* usb_buf; struct usb_device* dev; } ;


 int PAC207_CTRL_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int ,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int pac207_read_reg(struct gspca_dev *gspca_dev, u16 index)
{
 struct usb_device *udev = gspca_dev->dev;
 int res;

 res = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), 0x00,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   0x00, index,
   gspca_dev->usb_buf, 1, PAC207_CTRL_TIMEOUT);
 if (res < 0) {
  err("Failed to read a register (index 0x%04X, error %d)",
   index, res);
  return res;
 }

 return gspca_dev->usb_buf[0];
}
