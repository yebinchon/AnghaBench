
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ autogain_ignore_frames; int avg_lum; } ;
struct gspca_dev {int dummy; } ;


 int PAC207_AUTOGAIN_DEADZONE ;
 int PAC207_EXPOSURE_KNEE ;
 int PAC207_GAIN_KNEE ;
 scalar_t__ PAC_AUTOGAIN_IGNORE_FRAMES ;
 int atomic_read (int *) ;
 scalar_t__ gspca_auto_gain_n_exposure (struct gspca_dev*,int,int,int ,int ,int ) ;

__attribute__((used)) static void pac207_do_auto_gain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int avg_lum = atomic_read(&sd->avg_lum);

 if (avg_lum == -1)
  return;

 if (sd->autogain_ignore_frames > 0)
  sd->autogain_ignore_frames--;
 else if (gspca_auto_gain_n_exposure(gspca_dev, avg_lum,
   100, PAC207_AUTOGAIN_DEADZONE,
   PAC207_GAIN_KNEE, PAC207_EXPOSURE_KNEE))
  sd->autogain_ignore_frames = PAC_AUTOGAIN_IGNORE_FRAMES;
}
