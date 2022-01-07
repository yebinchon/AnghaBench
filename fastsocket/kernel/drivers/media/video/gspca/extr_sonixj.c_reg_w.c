
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int usb_err; int usb_buf; int dev; } ;


 int D_USBO ;
 int PDEBUG (int ,char*,int ,int const,int const) ;
 int USB_BUF_SZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int err (char*,...) ;
 int memcpy (int ,int const*,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int ,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
     u16 value,
     const u8 *buffer,
     int len)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 PDEBUG(D_USBO, "reg_w [%04x] = %02x %02x ..",
  value, buffer[0], buffer[1]);






 memcpy(gspca_dev->usb_buf, buffer, len);
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0x08,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   value, 0,
   gspca_dev->usb_buf, len,
   500);
 if (ret < 0) {
  err("reg_w err %d", ret);
  gspca_dev->usb_err = ret;
 }
}
