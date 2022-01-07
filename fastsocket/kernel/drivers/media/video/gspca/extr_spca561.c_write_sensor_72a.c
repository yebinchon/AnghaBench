
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef scalar_t__ __u16 ;


 int i2c_write (struct gspca_dev*,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static void write_sensor_72a(struct gspca_dev *gspca_dev,
       const __u16 (*sensor)[2])
{
 while ((*sensor)[0]) {
  i2c_write(gspca_dev, (*sensor)[1], (*sensor)[0]);
  sensor++;
 }
}
