
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;


 int D_USBI ;
 int PDEBUG (int ,char*,int ,int ) ;
 int USB_BUF_SZ ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int err (char*,...) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_r(struct gspca_dev *gspca_dev,
    u16 value, int len)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;






 ret = usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   value, 0,
   gspca_dev->usb_buf, len,
   500);
 PDEBUG(D_USBI, "reg_r [%02x] -> %02x", value, gspca_dev->usb_buf[0]);
 if (ret < 0) {
  err("reg_r err %d", ret);
  gspca_dev->usb_err = ret;
 }
}
