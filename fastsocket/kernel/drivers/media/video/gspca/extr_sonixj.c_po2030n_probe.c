
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {int i2c_addr; int sensor; } ;
struct gspca_dev {int* usb_buf; scalar_t__ usb_err; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*) ;
 int SENSOR_GC0307 ;
 int err (char*,int) ;
 int i2c_r (struct gspca_dev*,int,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void po2030n_probe(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u16 val;


 reg_w1(gspca_dev, 0x17, 0x62);
 reg_w1(gspca_dev, 0x01, 0x08);
 reg_w1(gspca_dev, 0x02, 0x22);
 sd->i2c_addr = 0x21;
 i2c_r(gspca_dev, 0x00, 1);
 val = gspca_dev->usb_buf[4];
 reg_w1(gspca_dev, 0x01, 0x29);
 reg_w1(gspca_dev, 0x17, 0x42);
 if (val == 0x99) {
  PDEBUG(D_PROBE, "Sensor gc0307");
  sd->sensor = SENSOR_GC0307;
  return;
 }


 reg_w1(gspca_dev, 0x17, 0x62);
 reg_w1(gspca_dev, 0x01, 0x0a);
 sd->i2c_addr = 0x6e;
 i2c_r(gspca_dev, 0x00, 2);
 val = (gspca_dev->usb_buf[3] << 8) | gspca_dev->usb_buf[4];
 reg_w1(gspca_dev, 0x01, 0x29);
 reg_w1(gspca_dev, 0x17, 0x42);
 if (gspca_dev->usb_err < 0)
  return;
 if (val == 0x2030) {
  PDEBUG(D_PROBE, "Sensor po2030n");

 } else {
  err("Unknown sensor ID %04x", val);
 }
}
