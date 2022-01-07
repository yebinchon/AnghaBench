
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int* usb_buf; } ;
typedef int __u8 ;


 int D_CONF ;
 int PAS106_REG0e ;
 int PDEBUG (int ,char*,int) ;
 scalar_t__ SENSOR_PAS106 ;
 int i2c_r (struct gspca_dev*,int ) ;

__attribute__((used)) static __u8 Et_getgainG(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_PAS106) {
  i2c_r(gspca_dev, PAS106_REG0e);
  PDEBUG(D_CONF, "Etoms gain G %d", gspca_dev->usb_buf[0]);
  return gspca_dev->usb_buf[0];
 }
 return 0x1f;
}
