
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int sensor; int brightness; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int sensor_addr; } ;


 int D_ERR ;
 int PDEBUG (int ,char*) ;




 int i2c_w (struct gspca_dev*,int*) ;
 TYPE_1__* sensor_data ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 131:
 case 130: {
  __u8 i2cOV[] =
   {0xa0, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x10};


  i2cOV[1] = sensor_data[sd->sensor].sensor_addr;
  i2cOV[3] = sd->brightness;
  if (i2c_w(gspca_dev, i2cOV) < 0)
   goto err;
  break;
     }
 case 129:
 case 128: {
  __u8 i2cpbright[] =
   {0xb0, 0x40, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x16};
  __u8 i2cpdoit[] =
   {0xa0, 0x40, 0x11, 0x01, 0x00, 0x00, 0x00, 0x16};


  if (sd->sensor == 129) {
   i2cpbright[2] = 7;
   i2cpdoit[2] = 0x13;
  }

  if (sd->brightness < 127) {

   i2cpbright[3] = 0x01;

   i2cpbright[4] = 127 - sd->brightness;
  } else
   i2cpbright[4] = sd->brightness - 127;

  if (i2c_w(gspca_dev, i2cpbright) < 0)
   goto err;
  if (i2c_w(gspca_dev, i2cpdoit) < 0)
   goto err;
  break;
     }
 }
 return;
err:
 PDEBUG(D_ERR, "i2c error brightness");
}
