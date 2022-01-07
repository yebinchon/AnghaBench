
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_buf; struct usb_device* dev; } ;


 int EIO ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int ) ;
 int memcpy (int ,int const*,int) ;
 scalar_t__ unlikely (int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int,int ,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int reg_w(struct gspca_dev *gspca_dev, u16 reg,
   const u8 *buffer, int length)
{
 struct usb_device *dev = gspca_dev->dev;
 int result;
 memcpy(gspca_dev->usb_buf, buffer, length);
 result = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
   0x08,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   reg,
   0x00,
   gspca_dev->usb_buf,
   length,
   500);
 if (unlikely(result < 0 || result != length)) {
  err("Write register failed index 0x%02X", reg);
  return -EIO;
 }
 return 0;
}
