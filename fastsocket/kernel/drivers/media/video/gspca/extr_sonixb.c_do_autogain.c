
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ autogain_ignore_frames; size_t sensor; int brightness; scalar_t__ exposure; scalar_t__ gain; int autogain; int avg_lum; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ AUTOGAIN_IGNORE_FRAMES ;
 int D_FRAM ;
 int EXPOSURE_KNEE ;
 int F_COARSE_EXPO ;
 int F_SIF ;
 int GAIN_KNEE ;
 int PDEBUG (int ,char*,int,int) ;
 int atomic_read (int *) ;
 int gspca_auto_gain_n_exposure (struct gspca_dev*,int,int,int,int ,int ) ;
 int gspca_coarse_grained_expo_autogain (struct gspca_dev*,int,int,int) ;
 TYPE_1__* sensor_data ;

__attribute__((used)) static void do_autogain(struct gspca_dev *gspca_dev)
{
 int deadzone, desired_avg_lum, result;
 struct sd *sd = (struct sd *) gspca_dev;
 int avg_lum = atomic_read(&sd->avg_lum);

 if (avg_lum == -1 || !sd->autogain)
  return;

 if (sd->autogain_ignore_frames > 0) {
  sd->autogain_ignore_frames--;
  return;
 }



 if (sensor_data[sd->sensor].flags & F_SIF) {
  deadzone = 500;

  desired_avg_lum = 5000;
 } else {
  deadzone = 1500;
  desired_avg_lum = 13000;
 }

 if (sensor_data[sd->sensor].flags & F_COARSE_EXPO)
  result = gspca_coarse_grained_expo_autogain(gspca_dev, avg_lum,
    sd->brightness * desired_avg_lum / 127,
    deadzone);
 else
  result = gspca_auto_gain_n_exposure(gspca_dev, avg_lum,
    sd->brightness * desired_avg_lum / 127,
    deadzone, GAIN_KNEE, EXPOSURE_KNEE);

 if (result) {
  PDEBUG(D_FRAM, "autogain: gain changed: gain: %d expo: %d",
   (int)sd->gain, (int)sd->exposure);
  sd->autogain_ignore_frames = AUTOGAIN_IGNORE_FRAMES;
 }
}
