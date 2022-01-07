
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int sensor; int exposure; int reg11; int autogain; } ;
struct gspca_dev {int width; } ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_2__ {int sensor_addr; } ;


 int D_ERR ;
 int PDEBUG (int ,char*) ;







 int i2c_w (struct gspca_dev*,int const*) ;
 int reg_w (struct gspca_dev*,int,int*,int) ;
 TYPE_1__* sensor_data ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 134: {


  __u8 i2c[] = {0xc0, 0x11, 0x25, 0x00, 0x00, 0x00, 0x00, 0x17};






  __u16 reg = sd->exposure * 6;
  i2c[3] = reg >> 8;
  i2c[4] = reg & 0xff;
  if (i2c_w(gspca_dev, i2c) != 0)
   goto err;
  break;
     }
 case 129:
 case 128: {



  __u8 reg = sd->exposure;
  reg = (reg << 4) | 0x0b;
  reg_w(gspca_dev, 0x19, &reg, 1);
  break;
     }
 case 133:
 case 132: {
  __u8 i2c[] = {0xb0, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10};
  int reg10, reg11, reg10_max;







  if (sd->sensor == 133) {
   reg10_max = 0x4d;
   i2c[4] = 0xc0;
  } else
   reg10_max = 0x41;

  reg11 = (15 * sd->exposure + 999) / 1000;
  if (reg11 < 1)
   reg11 = 1;
  else if (reg11 > 16)
   reg11 = 16;




  if (gspca_dev->width == 640 && reg11 < 4)
   reg11 = 4;



  reg10 = (sd->exposure * 15 * reg10_max) / (1000 * reg11);





  if (sd->autogain && reg10 < 10)
   reg10 = 10;
  else if (reg10 > reg10_max)
   reg10 = reg10_max;


  i2c[1] = sensor_data[sd->sensor].sensor_addr;
  i2c[3] = reg10;
  i2c[4] |= reg11 - 1;


  if (sd->reg11 == reg11)
   i2c[0] = 0xa0;

  if (i2c_w(gspca_dev, i2c) == 0)
   sd->reg11 = reg11;
  else
   goto err;
  break;
     }
 case 130: {
  __u8 i2cpframerate[] =
   {0xb0, 0x40, 0x04, 0x00, 0x00, 0x00, 0x00, 0x16};
  __u8 i2cpexpo[] =
   {0xa0, 0x40, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x16};
  const __u8 i2cpdoit[] =
   {0xa0, 0x40, 0x11, 0x01, 0x00, 0x00, 0x00, 0x16};
  int framerate_ctrl;
  if (sd->exposure < 200) {
   i2cpexpo[3] = 255 - (sd->exposure * 255) / 200;
   framerate_ctrl = 500;
  } else {



   framerate_ctrl = (sd->exposure - 200) * 1000 / 229 +
      500;
  }

  i2cpframerate[3] = framerate_ctrl >> 6;
  i2cpframerate[4] = framerate_ctrl & 0x3f;
  if (i2c_w(gspca_dev, i2cpframerate) < 0)
   goto err;
  if (i2c_w(gspca_dev, i2cpexpo) < 0)
   goto err;
  if (i2c_w(gspca_dev, i2cpdoit) < 0)
   goto err;
  break;
     }
 case 131: {
  __u8 i2cpframerate[] =
   {0xb1, 0x40, 0x03, 0x00, 0x00, 0x00, 0x00, 0x14};
  __u8 i2cpexpo[] =
   {0xa1, 0x40, 0x05, 0x00, 0x00, 0x00, 0x00, 0x14};
  const __u8 i2cpdoit[] =
   {0xa1, 0x40, 0x13, 0x01, 0x00, 0x00, 0x00, 0x14};
  int framerate_ctrl;



  if (sd->exposure < 150) {
   i2cpexpo[3] = 150 - sd->exposure;
   framerate_ctrl = 300;
  } else {



   framerate_ctrl = (sd->exposure - 150) * 1000 / 230 +
      300;
  }

  i2cpframerate[3] = framerate_ctrl >> 4;
  i2cpframerate[4] = framerate_ctrl & 0x0f;
  if (i2c_w(gspca_dev, i2cpframerate) < 0)
   goto err;
  if (i2c_w(gspca_dev, i2cpexpo) < 0)
   goto err;
  if (i2c_w(gspca_dev, i2cpdoit) < 0)
   goto err;
  break;
     }
 }
 return;
err:
 PDEBUG(D_ERR, "i2c error exposure");
}
