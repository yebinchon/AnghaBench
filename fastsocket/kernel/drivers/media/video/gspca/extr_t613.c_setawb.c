
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sd {size_t sensor; void* green_gain; void* blue_gain; void* red_gain; int awb; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int reg80; } ;


 void* reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int) ;
 TYPE_1__* sensor_data ;

__attribute__((used)) static void setawb(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u16 reg80;

 reg80 = (sensor_data[sd->sensor].reg80 << 8) | 0x80;


 if (!sd->awb) {


  sd->red_gain = reg_r(gspca_dev, 0x0087);
  sd->blue_gain = reg_r(gspca_dev, 0x0088);
  sd->green_gain = reg_r(gspca_dev, 0x0089);
  reg80 &= ~0x0400;
 }
 reg_w(gspca_dev, reg80);
 reg_w(gspca_dev, reg80);
}
