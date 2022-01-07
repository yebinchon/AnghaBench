
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {size_t sensor; int autogain_ignore_frames; int gain; int exposure; scalar_t__ autogain; scalar_t__ exp_too_low_cnt; scalar_t__ exp_too_high_cnt; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef scalar_t__ __s32 ;
struct TYPE_2__ {int flags; } ;


 int AUTOGAIN_IGNORE_FRAMES ;
 int EXPOSURE_DEF ;
 int F_COARSE_EXPO ;
 int GAIN_DEF ;
 TYPE_1__* sensor_data ;
 int setexposure (struct gspca_dev*) ;
 int setgain (struct gspca_dev*) ;

__attribute__((used)) static int sd_setautogain(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->autogain = val;
 sd->exp_too_high_cnt = 0;
 sd->exp_too_low_cnt = 0;





 if (sd->autogain && !(sensor_data[sd->sensor].flags & F_COARSE_EXPO)) {
  sd->exposure = EXPOSURE_DEF;
  sd->gain = GAIN_DEF;
  if (gspca_dev->streaming) {
   sd->autogain_ignore_frames = AUTOGAIN_IGNORE_FRAMES;
   setexposure(gspca_dev);
   setgain(gspca_dev);
  }
 }

 return 0;
}
