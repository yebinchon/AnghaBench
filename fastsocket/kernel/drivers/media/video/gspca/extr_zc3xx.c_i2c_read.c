
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int D_USBI ;
 int PDEBUG (int ,char*,int,int,int) ;
 int err (char*,int) ;
 int msleep (int) ;
 int reg_r_i (struct gspca_dev*,int) ;
 int reg_w_i (struct gspca_dev*,int,int) ;

__attribute__((used)) static u16 i2c_read(struct gspca_dev *gspca_dev,
   u8 reg)
{
 u8 retbyte;
 u16 retval;

 if (gspca_dev->usb_err < 0)
  return 0;
 reg_w_i(gspca_dev, reg, 0x0092);
 reg_w_i(gspca_dev, 0x02, 0x0090);
 msleep(20);
 retbyte = reg_r_i(gspca_dev, 0x0091);
 if (retbyte != 0x00)
  err("i2c_r status error %02x", retbyte);
 retval = reg_r_i(gspca_dev, 0x0095);
 retval |= reg_r_i(gspca_dev, 0x0096) << 8;
 PDEBUG(D_USBI, "i2c r [%02x] -> %04x (%02x)",
   reg, retval, retbyte);
 return retval;
}
