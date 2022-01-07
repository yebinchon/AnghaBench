
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int usb_buf; struct usb_device* dev; } ;


 int err (char*,int) ;
 int reg_w (struct gspca_dev*,int,int) ;
 int usb_bulk_msg (struct usb_device*,int ,int ,int,int*,int) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static void rcv_val(struct gspca_dev *gspca_dev,
   int ads)
{
 struct usb_device *dev = gspca_dev->dev;
 int alen, ret;

 reg_w(gspca_dev, 0x634, (ads >> 16) & 0xff);
 reg_w(gspca_dev, 0x635, (ads >> 8) & 0xff);
 reg_w(gspca_dev, 0x636, ads & 0xff);
 reg_w(gspca_dev, 0x637, 0);
 reg_w(gspca_dev, 0x638, 4);
 reg_w(gspca_dev, 0x639, 0);
 reg_w(gspca_dev, 0x63a, 0);
 reg_w(gspca_dev, 0x63b, 0);
 reg_w(gspca_dev, 0x630, 5);
 if (gspca_dev->usb_err < 0)
  return;
 ret = usb_bulk_msg(dev,
   usb_rcvbulkpipe(dev, 0x05),
   gspca_dev->usb_buf,
   4,
   &alen,
   500);
 if (ret < 0) {
  err("rcv_val err %d", ret);
  gspca_dev->usb_err = ret;
 }
}
