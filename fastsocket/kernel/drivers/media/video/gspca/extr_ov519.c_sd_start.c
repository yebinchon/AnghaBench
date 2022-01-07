
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_dis; int height; int width; } ;
struct sd {int bridge; int snapshot_needs_reset; int first_frame; TYPE_1__ gspca_dev; int sensor_height; int sensor_width; } ;
struct gspca_dev {int usb_err; } ;


 int AUTOBRIGHT ;






 int BRIGHTNESS ;
 int COLORS ;
 int CONTRAST ;
 int FREQ ;
 int HFLIP ;
 int VFLIP ;
 int ov511_mode_init_regs (struct sd*) ;
 int ov518_mode_init_regs (struct sd*) ;
 int ov519_mode_init_regs (struct sd*) ;
 int ov51x_led_control (struct sd*,int) ;
 int ov51x_restart (struct sd*) ;
 int sd_reset_snapshot (struct gspca_dev*) ;
 int set_ov_sensor_window (struct sd*) ;
 int setautobright (struct gspca_dev*) ;
 int setbrightness (struct gspca_dev*) ;
 int setcolors (struct gspca_dev*) ;
 int setcontrast (struct gspca_dev*) ;
 int setfreq_i (struct sd*) ;
 int sethvflip (struct gspca_dev*) ;
 int w9968cf_mode_init_regs (struct sd*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;


 sd->sensor_width = sd->gspca_dev.width;
 sd->sensor_height = sd->gspca_dev.height;

 switch (sd->bridge) {
 case 133:
 case 132:
  ov511_mode_init_regs(sd);
  break;
 case 131:
 case 130:
  ov518_mode_init_regs(sd);
  break;
 case 129:
  ov519_mode_init_regs(sd);
  break;

 case 128:
  w9968cf_mode_init_regs(sd);
  break;
 }

 set_ov_sensor_window(sd);

 if (!(sd->gspca_dev.ctrl_dis & (1 << CONTRAST)))
  setcontrast(gspca_dev);
 if (!(sd->gspca_dev.ctrl_dis & (1 << BRIGHTNESS)))
  setbrightness(gspca_dev);
 if (!(sd->gspca_dev.ctrl_dis & (1 << COLORS)))
  setcolors(gspca_dev);
 if (!(sd->gspca_dev.ctrl_dis & ((1 << HFLIP) | (1 << VFLIP))))
  sethvflip(gspca_dev);
 if (!(sd->gspca_dev.ctrl_dis & (1 << AUTOBRIGHT)))
  setautobright(gspca_dev);
 if (!(sd->gspca_dev.ctrl_dis & (1 << FREQ)))
  setfreq_i(sd);



 sd->snapshot_needs_reset = 1;
 sd_reset_snapshot(gspca_dev);

 sd->first_frame = 3;

 ov51x_restart(sd);
 ov51x_led_control(sd, 1);
 return gspca_dev->usb_err;
}
