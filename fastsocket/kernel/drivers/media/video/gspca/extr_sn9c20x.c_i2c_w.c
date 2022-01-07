
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int* usb_buf; } ;


 int EIO ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w (struct gspca_dev*,int,int const*,int) ;

__attribute__((used)) static int i2c_w(struct gspca_dev *gspca_dev, const u8 *buffer)
{
 int i;
 reg_w(gspca_dev, 0x10c0, buffer, 8);
 for (i = 0; i < 5; i++) {
  reg_r(gspca_dev, 0x10c0, 1);
  if (gspca_dev->usb_buf[0] & 0x04) {
   if (gspca_dev->usb_buf[0] & 0x08)
    return -EIO;
   return 0;
  }
  msleep(1);
 }
 return -EIO;
}
