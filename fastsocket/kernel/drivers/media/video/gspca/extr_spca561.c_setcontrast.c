
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct sd {scalar_t__ chip_revision; scalar_t__ contrast; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef scalar_t__ __u8 ;


 scalar_t__ Rev072A ;
 int reg_w_val (struct usb_device*,int,scalar_t__) ;
 int setwhite (struct gspca_dev*) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct usb_device *dev = gspca_dev->dev;
 __u8 value;

 if (sd->chip_revision != Rev072A)
  return;
 value = sd->contrast + 0x20;


 setwhite(gspca_dev);

 reg_w_val(dev, 0x8652, value);

 reg_w_val(dev, 0x8654, value);
}
