
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cam {TYPE_1__* cam_mode; } ;
struct TYPE_4__ {size_t curr_mode; struct cam cam; } ;
struct sd {TYPE_2__ gspca_dev; } ;
struct TYPE_3__ {int priv; } ;


 int D_CONF ;
 int D_STREAM ;
 int LED_ON ;
 int PDEBUG (int ,char*) ;
 int STV_LED_CTRL ;
 int STV_SCAN_RATE ;
 int STV_X_CTRL ;
 int STV_Y_CTRL ;
 int VV6410_CROP_TO_QVGA ;
 int VV6410_SETUP0 ;
 int VV6410_SUBSAMPLE ;
 int VV6410_XENDH ;
 int VV6410_YENDH ;
 int stv06xx_write_bridge (struct sd*,int ,int) ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int vv6410_start(struct sd *sd)
{
 int err;
 struct cam *cam = &sd->gspca_dev.cam;
 u32 priv = cam->cam_mode[sd->gspca_dev.curr_mode].priv;

 if (priv & VV6410_CROP_TO_QVGA) {
  PDEBUG(D_CONF, "Cropping to QVGA");
  stv06xx_write_sensor(sd, VV6410_XENDH, 320 - 1);
  stv06xx_write_sensor(sd, VV6410_YENDH, 240 - 1);
 } else {
  stv06xx_write_sensor(sd, VV6410_XENDH, 360 - 1);
  stv06xx_write_sensor(sd, VV6410_YENDH, 294 - 1);
 }

 if (priv & VV6410_SUBSAMPLE) {
  PDEBUG(D_CONF, "Enabling subsampling");
  stv06xx_write_bridge(sd, STV_Y_CTRL, 0x02);
  stv06xx_write_bridge(sd, STV_X_CTRL, 0x06);

  stv06xx_write_bridge(sd, STV_SCAN_RATE, 0x10);
 } else {
  stv06xx_write_bridge(sd, STV_Y_CTRL, 0x01);
  stv06xx_write_bridge(sd, STV_X_CTRL, 0x0a);

  stv06xx_write_bridge(sd, STV_SCAN_RATE, 0x20);
 }


 err = stv06xx_write_bridge(sd, STV_LED_CTRL, LED_ON);
 if (err < 0)
  return err;

 err = stv06xx_write_sensor(sd, VV6410_SETUP0, 0);
 if (err < 0)
  return err;

 PDEBUG(D_STREAM, "Starting stream");

 return 0;
}
