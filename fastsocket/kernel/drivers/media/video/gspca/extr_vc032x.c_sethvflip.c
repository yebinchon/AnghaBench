
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int hflip; int flags; int vflip; int sensor; } ;
struct gspca_dev {int dummy; } ;


 int FL_HFLIP ;
 int FL_VFLIP ;
 int OV7660_MVFP_MIRROR ;
 int OV7660_MVFP_VFLIP ;
 int OV7660_REG_MVFP ;






 int i2c_write (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void sethvflip(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 data[2], hflip, vflip;

 hflip = sd->hflip;
 if (sd->flags & FL_HFLIP)
  hflip = !hflip;
 vflip = sd->vflip;
 if (sd->flags & FL_VFLIP)
  vflip = !vflip;
 switch (sd->sensor) {
 case 133:
 case 132:
 case 131:
  data[0] = data[1] = 0;
  i2c_write(gspca_dev, 0xf0, data, 2);
  data[0] = sd->sensor == 133 ? 0x03 : 0x01;
  data[1] = 0x02 * hflip
   | 0x01 * vflip;
  i2c_write(gspca_dev, 0x20, data, 2);
  break;
 case 130:
 case 129:
  data[0] = sd->sensor == 130 ? 0x01 : 0x07;
  data[0] |= OV7660_MVFP_MIRROR * hflip
   | OV7660_MVFP_VFLIP * vflip;
  i2c_write(gspca_dev, OV7660_REG_MVFP, data, 1);
  break;
 case 128:
  data[0] = 0;
  i2c_write(gspca_dev, 0x03, data, 1);
  data[0] = 0x80 * hflip
   | 0x40 * vflip
   | 0x06;
  i2c_write(gspca_dev, 0x1e, data, 1);
  break;
 }
}
