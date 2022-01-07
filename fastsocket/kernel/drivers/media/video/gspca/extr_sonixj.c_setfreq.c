
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {int sensor; TYPE_1__* ctrls; } ;
struct gspca_dev {int ctrl_dis; } ;
struct TYPE_2__ {int val; } ;


 int FREQ ;


 int SENSOR_OV7660 ;
 int i2c_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setfreq(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (gspca_dev->ctrl_dis & (1 << FREQ))
  return;
 if (sd->sensor == SENSOR_OV7660) {
  u8 com8;

  com8 = 0xdf;
  switch (sd->ctrls[FREQ].val) {
  case 0:
   i2c_w1(gspca_dev, 0x13, com8 | 0x20);
   break;
  case 1:
   i2c_w1(gspca_dev, 0x13, com8);
   i2c_w1(gspca_dev, 0x3b, 0x0a);
   break;
  case 2:
   i2c_w1(gspca_dev, 0x13, com8);
   i2c_w1(gspca_dev, 0x3b, 0x02);
   break;
  }
 } else {
  u8 reg2a = 0, reg2b = 0, reg2d = 0;


  switch (sd->sensor) {
  case 129:
   reg2a = 0x08;
   reg2d = 0x01;
   break;
  case 128:
   reg2a = 0x11;
   reg2d = 0x81;
   break;
  }

  switch (sd->ctrls[FREQ].val) {
  case 0:
   break;
  case 1:
   reg2a |= 0x80;
   reg2b = 0xac;
   reg2d |= 0x04;
   break;
  case 2:
   reg2a |= 0x80;
   reg2d |= 0x04;
   break;
  }
  i2c_w1(gspca_dev, 0x2a, reg2a);
  i2c_w1(gspca_dev, 0x2b, reg2b);
  i2c_w1(gspca_dev, 0x2d, reg2d);
 }
}
