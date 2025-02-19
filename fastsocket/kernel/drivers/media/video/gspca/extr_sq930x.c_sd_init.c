
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int* gpio; size_t sensor; } ;
struct gspca_dev {scalar_t__ usb_err; int* usb_buf; } ;
struct TYPE_2__ {int name; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int,...) ;
 size_t SENSOR_ICX098BQ ;
 size_t SENSOR_MI0360 ;
 int SQ930_CTRL_GET_DEV_INFO ;
 int bridge_init (struct sd*) ;
 int cmos_probe (struct gspca_dev*) ;
 int global_init (struct sd*,int) ;
 int reg_r (struct gspca_dev*,int ,int) ;
 TYPE_1__* sensor_tb ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->gpio[0] = sd->gpio[1] = 0xff;






 reg_r(gspca_dev, SQ930_CTRL_GET_DEV_INFO, 8);
 if (gspca_dev->usb_err < 0)
  return gspca_dev->usb_err;
 PDEBUG(D_PROBE, "info: %02x %02x %02x %02x %02x %02x %02x %02x",
   gspca_dev->usb_buf[0],
   gspca_dev->usb_buf[1],
   gspca_dev->usb_buf[2],
   gspca_dev->usb_buf[3],
   gspca_dev->usb_buf[4],
   gspca_dev->usb_buf[5],
   gspca_dev->usb_buf[6],
   gspca_dev->usb_buf[7]);

 bridge_init(sd);

 if (sd->sensor == SENSOR_MI0360) {


  if (gspca_dev->usb_buf[5] == 0xf6)
   sd->sensor = SENSOR_ICX098BQ;
  else
   cmos_probe(gspca_dev);
 }
 if (gspca_dev->usb_err >= 0) {
  PDEBUG(D_PROBE, "Sensor %s", sensor_tb[sd->sensor].name);
  global_init(sd, 1);
 }
 return gspca_dev->usb_err;
}
