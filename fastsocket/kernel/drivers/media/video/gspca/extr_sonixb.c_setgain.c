
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {size_t sensor; scalar_t__ bridge; int gain; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ BRIDGE_103 ;
 int F_GAIN ;
 int reg_w (struct gspca_dev*,int,int*,int) ;
 TYPE_1__* sensor_data ;
 int setsensorgain (struct gspca_dev*) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 gain;
 __u8 buf[3] = { 0, 0, 0 };

 if (sensor_data[sd->sensor].flags & F_GAIN) {

  setsensorgain(gspca_dev);
  return;
 }

 if (sd->bridge == BRIDGE_103) {
  gain = sd->gain >> 1;
  buf[0] = gain;
  buf[1] = gain;
  buf[2] = gain;
  reg_w(gspca_dev, 0x05, buf, 3);
 } else {
  gain = sd->gain >> 4;
  buf[0] = gain << 4 | gain;
  buf[1] = gain;
  reg_w(gspca_dev, 0x10, buf, 2);
 }
}
