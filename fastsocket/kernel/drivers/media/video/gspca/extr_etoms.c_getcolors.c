
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; int colors; } ;
struct gspca_dev {int* usb_buf; } ;


 scalar_t__ PAS106_REG9 ;
 scalar_t__ SENSOR_PAS106 ;
 int i2c_r (struct gspca_dev*,scalar_t__) ;

__attribute__((used)) static void getcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_PAS106) {

  i2c_r(gspca_dev, PAS106_REG9 + 3);
  sd->colors = gspca_dev->usb_buf[0] & 0x0f;
 }
}
