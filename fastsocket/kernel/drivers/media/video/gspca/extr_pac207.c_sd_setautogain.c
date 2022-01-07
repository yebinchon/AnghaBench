
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int autogain_ignore_frames; int gain; int exposure; scalar_t__ autogain; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef scalar_t__ __s32 ;


 int PAC207_EXPOSURE_DEFAULT ;
 int PAC207_GAIN_DEFAULT ;
 int PAC_AUTOGAIN_IGNORE_FRAMES ;
 int setexposure (struct gspca_dev*) ;
 int setgain (struct gspca_dev*) ;

__attribute__((used)) static int sd_setautogain(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->autogain = val;




 if (sd->autogain) {
  sd->exposure = PAC207_EXPOSURE_DEFAULT;
  sd->gain = PAC207_GAIN_DEFAULT;
  if (gspca_dev->streaming) {
   sd->autogain_ignore_frames =
    PAC_AUTOGAIN_IGNORE_FRAMES;
   setexposure(gspca_dev);
   setgain(gspca_dev);
  }
 }

 return 0;
}
