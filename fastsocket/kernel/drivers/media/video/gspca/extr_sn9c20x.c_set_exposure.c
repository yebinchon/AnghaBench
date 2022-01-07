
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int i2c_addr; int sensor; int exposure; } ;
struct gspca_dev {int dummy; } ;
 int i2c_w (struct gspca_dev*,int*) ;

__attribute__((used)) static int set_exposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 exp[8] = {0x81, sd->i2c_addr, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1e};
 switch (sd->sensor) {
 case 131:
 case 130:
 case 128:
 case 129:
  exp[0] |= (3 << 4);
  exp[2] = 0x2d;
  exp[3] = sd->exposure & 0xff;
  exp[4] = sd->exposure >> 8;
  break;
 case 134:
 case 132:
 case 133:
  exp[0] |= (3 << 4);
  exp[2] = 0x09;
  exp[3] = sd->exposure >> 8;
  exp[4] = sd->exposure & 0xff;
  break;
 case 135:
  exp[0] |= (4 << 4);
  exp[2] = 0x25;
  exp[3] = (sd->exposure >> 5) & 0xff;
  exp[4] = (sd->exposure << 3) & 0xff;
  exp[5] = 0;
  break;
 default:
  return 0;
 }
 i2c_w(gspca_dev, exp);
 return 0;
}
