
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int usb_err; int usb_buf; int dev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int ,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_r_i(struct gspca_dev *gspca_dev,
    u16 req,
    u16 index,
    u16 len)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 ret = usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   req,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   1,
   index, gspca_dev->usb_buf, len,
   500);
 if (ret < 0) {
  err("reg_r err %d", ret);
  gspca_dev->usb_err = ret;
 }
}
