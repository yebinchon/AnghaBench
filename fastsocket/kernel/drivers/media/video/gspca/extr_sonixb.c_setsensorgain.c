
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {unsigned char gain; int sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int sensor_addr; } ;


 int D_ERR ;
 int PDEBUG (int ,char*) ;
 int i2c_w (struct gspca_dev*,int*) ;
 TYPE_1__* sensor_data ;

__attribute__((used)) static void setsensorgain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 unsigned char gain = sd->gain;

 switch (sd->sensor) {
 case 135: {
  __u8 i2c[] =
   {0xc0, 0x11, 0x31, 0x00, 0x00, 0x00, 0x00, 0x17};

  i2c[3] = 0x3f - (sd->gain / 4);
  i2c[4] = 0x3f - (sd->gain / 4);
  i2c[5] = 0x3f - (sd->gain / 4);

  if (i2c_w(gspca_dev, i2c) < 0)
   goto err;
  break;
     }
 case 130:
 case 128: {
  __u8 i2c[] =
   {0x30, 0x11, 0x02, 0x20, 0x70, 0x00, 0x00, 0x10};

  i2c[4] = 255 - gain;
  if (i2c_w(gspca_dev, i2c) < 0)
   goto err;
  break;
     }
 case 129: {
  __u8 i2c[] = {
   0xb0, 0x61, 0x02, 0x00, 0x10, 0x00, 0x00, 0x17 };
  gain = 255 - gain;

  i2c[3] |= (gain & 0x80) >> 7;
  i2c[3] |= (gain & 0x40) >> 5;
  i2c[3] |= (gain & 0x20) >> 3;
  i2c[3] |= (gain & 0x10) >> 1;
  i2c[3] |= (gain & 0x08) << 1;
  i2c[3] |= (gain & 0x04) << 3;
  i2c[3] |= (gain & 0x02) << 5;
  i2c[3] |= (gain & 0x01) << 7;
  if (i2c_w(gspca_dev, i2c) < 0)
   goto err;
  break;
     }

 case 134:
  gain >>= 1;

 case 133: {
  __u8 i2c[] = {0xa0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10};

  i2c[1] = sensor_data[sd->sensor].sensor_addr;
  i2c[3] = gain >> 2;
  if (i2c_w(gspca_dev, i2c) < 0)
   goto err;
  break;
     }
 case 132:
 case 131: {
  __u8 i2cpgain[] =
   {0xa0, 0x40, 0x10, 0x00, 0x00, 0x00, 0x00, 0x15};
  __u8 i2cpcolorgain[] =
   {0xc0, 0x40, 0x07, 0x00, 0x00, 0x00, 0x00, 0x15};
  __u8 i2cpdoit[] =
   {0xa0, 0x40, 0x11, 0x01, 0x00, 0x00, 0x00, 0x16};


  if (sd->sensor == 132) {
   i2cpgain[2] = 0x0e;
   i2cpcolorgain[0] = 0xd0;
   i2cpcolorgain[2] = 0x09;
   i2cpdoit[2] = 0x13;
  }

  i2cpgain[3] = sd->gain >> 3;
  i2cpcolorgain[3] = sd->gain >> 4;
  i2cpcolorgain[4] = sd->gain >> 4;
  i2cpcolorgain[5] = sd->gain >> 4;
  i2cpcolorgain[6] = sd->gain >> 4;

  if (i2c_w(gspca_dev, i2cpgain) < 0)
   goto err;
  if (i2c_w(gspca_dev, i2cpcolorgain) < 0)
   goto err;
  if (i2c_w(gspca_dev, i2cpdoit) < 0)
   goto err;
  break;
     }
 }
 return;
err:
 PDEBUG(D_ERR, "i2c error gain");
}
