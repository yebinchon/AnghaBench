
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int sensor; int freq; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int sensor_addr; } ;


 int D_ERR ;
 int PDEBUG (int ,char*) ;


 int i2c_w (struct gspca_dev*,int*) ;
 TYPE_1__* sensor_data ;

__attribute__((used)) static void setfreq(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 129:
 case 128: {




  __u8 i2c[] = {0xa0, 0x00, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x10};
  switch (sd->freq) {
  default:


   i2c[3] = 0;
   break;
  case 1:
   i2c[3] = (sd->sensor == 129)
     ? 0x4f : 0x8a;
   break;
  }
  i2c[1] = sensor_data[sd->sensor].sensor_addr;
  if (i2c_w(gspca_dev, i2c) < 0)
   PDEBUG(D_ERR, "i2c error setfreq");
  break;
     }
 }
}
