
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;
typedef int __u8 ;


 int msleep (int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int const*,int) ;

__attribute__((used)) static int i2c_w(struct gspca_dev *gspca_dev, const __u8 *buffer)
{
 int retry = 60;


 reg_w(gspca_dev, 0x08, buffer, 8);
 while (retry--) {
  msleep(10);
  reg_r(gspca_dev, 0x08);
  if (gspca_dev->usb_buf[0] & 0x04) {
   if (gspca_dev->usb_buf[0] & 0x08)
    return -1;
   return 0;
  }
 }
 return -1;
}
