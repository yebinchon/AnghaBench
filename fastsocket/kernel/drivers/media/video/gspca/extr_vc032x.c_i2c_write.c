
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {scalar_t__ usb_err; scalar_t__* usb_buf; } ;


 int D_USBO ;
 int PDEBUG (int ,char*,int,int const,...) ;
 int err (char*) ;
 int msleep (int) ;
 int reg_r_i (struct gspca_dev*,int,int,int) ;
 int reg_w_i (struct gspca_dev*,int,int const,int) ;

__attribute__((used)) static void i2c_write(struct gspca_dev *gspca_dev,
   u8 reg, const u8 *val,
   u8 size)
{
 int retry;
 reg_r_i(gspca_dev, 0xa1, 0xb33f, 1);

 reg_w_i(gspca_dev, 0xa0, size, 0xb334);
 reg_w_i(gspca_dev, 0xa0, reg, 0xb33a);
 reg_w_i(gspca_dev, 0xa0, val[0], 0xb336);
 if (size > 1)
  reg_w_i(gspca_dev, 0xa0, val[1], 0xb337);
 reg_w_i(gspca_dev, 0xa0, 0x01, 0xb339);
 retry = 4;
 do {
  reg_r_i(gspca_dev, 0xa1, 0xb33b, 1);
  if (gspca_dev->usb_buf[0] == 0)
   break;
  msleep(20);
 } while (--retry > 0);
 if (retry <= 0)
  err("i2c_write timeout");
}
