
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef scalar_t__ __u16 ;


 int reg_w_val (struct usb_device*,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static void write_vector(struct gspca_dev *gspca_dev,
   const __u16 data[][2])
{
 struct usb_device *dev = gspca_dev->dev;
 int i;

 i = 0;
 while (data[i][1] != 0) {
  reg_w_val(dev, data[i][1], data[i][0]);
  i++;
 }
}
