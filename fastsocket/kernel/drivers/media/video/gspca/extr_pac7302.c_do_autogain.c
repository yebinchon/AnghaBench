
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int brightness; scalar_t__ autogain_ignore_frames; int avg_lum; } ;
struct gspca_dev {int dummy; } ;


 int EXPOSURE_KNEE ;
 int GAIN_KNEE ;
 scalar_t__ PAC_AUTOGAIN_IGNORE_FRAMES ;
 int atomic_read (int *) ;
 scalar_t__ gspca_auto_gain_n_exposure (struct gspca_dev*,int,int,int const,int ,int ) ;

__attribute__((used)) static void do_autogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int avg_lum = atomic_read(&sd->avg_lum);
 int desired_lum;
 const int deadzone = 30;

 if (avg_lum == -1)
  return;

 desired_lum = 270 + sd->brightness;

 if (sd->autogain_ignore_frames > 0)
  sd->autogain_ignore_frames--;
 else if (gspca_auto_gain_n_exposure(gspca_dev, avg_lum, desired_lum,
   deadzone, GAIN_KNEE, EXPOSURE_KNEE))
  sd->autogain_ignore_frames = PAC_AUTOGAIN_IGNORE_FRAMES;
}
