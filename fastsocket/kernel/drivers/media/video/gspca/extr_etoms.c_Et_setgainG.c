
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int PAS106_REG0e ;
 int PAS106_REG13 ;
 scalar_t__ SENSOR_PAS106 ;
 int i2c_w (struct gspca_dev*,int ,int*,int,int) ;

__attribute__((used)) static void Et_setgainG(struct gspca_dev *gspca_dev, __u8 gain)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_PAS106) {
  __u8 i2cflags = 0x01;

  i2c_w(gspca_dev, PAS106_REG13, &i2cflags, 1, 3);
  i2c_w(gspca_dev, PAS106_REG0e, &gain, 1, 1);
 }
}
