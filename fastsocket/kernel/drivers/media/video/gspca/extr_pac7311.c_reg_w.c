
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;
typedef int __u8 ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int ,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
    __u8 index,
    __u8 value)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 gspca_dev->usb_buf[0] = value;
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, index, gspca_dev->usb_buf, 1,
   500);
 if (ret < 0) {
  err("reg_w() failed index 0x%02x, value 0x%02x, error %d",
   index, value, ret);
  gspca_dev->usb_err = ret;
 }
}
