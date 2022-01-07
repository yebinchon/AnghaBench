
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;


 int reg_write (struct usb_device*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static int write_vector(struct gspca_dev *gspca_dev,
   const u8 data[][3])
{
 struct usb_device *dev = gspca_dev->dev;
 int ret, i = 0;

 while (data[i][0] != 0) {
  ret = reg_write(dev, data[i][0], data[i][2], data[i][1]);
  if (ret < 0)
   return ret;
  i++;
 }
 return 0;
}
