
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef scalar_t__ __u16 ;


 int D_ERR ;
 int PDEBUG (int ,char*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ;
 int reg_write (struct usb_device*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static int write_vector(struct gspca_dev *gspca_dev,
   const __u16 data[][3])
{
 struct usb_device *dev = gspca_dev->dev;
 int ret, i = 0;

 while (data[i][0] != 0 || data[i][1] != 0 || data[i][2] != 0) {
  ret = reg_write(dev, data[i][0], data[i][2], data[i][1]);
  if (ret < 0) {
   PDEBUG(D_ERR,
    "Reg write failed for 0x%02x,0x%02x,0x%02x",
    data[i][0], data[i][1], data[i][2]);
   return ret;
  }
  i++;
 }
 return 0;
}
