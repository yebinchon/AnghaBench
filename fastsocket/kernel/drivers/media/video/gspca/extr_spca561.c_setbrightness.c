
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct sd {int brightness; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef int __u8 ;


 int reg_w_val (struct usb_device*,int,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct usb_device *dev = gspca_dev->dev;
 __u8 value;

 value = sd->brightness;


 reg_w_val(dev, 0x8611, value);
 reg_w_val(dev, 0x8612, value);
 reg_w_val(dev, 0x8613, value);
 reg_w_val(dev, 0x8614, value);
}
