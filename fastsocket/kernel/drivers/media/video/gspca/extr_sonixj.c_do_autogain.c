
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ ag_cnt; int sensor; int exposure; int avg_lum; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ AG_CNT_START ;
 int D_FRAM ;
 int PDEBUG (int ,char*,int) ;



 int atomic_read (int *) ;
 void* setexposure (struct gspca_dev*,unsigned int) ;
 int setredblue (struct gspca_dev*) ;

__attribute__((used)) static void do_autogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int delta;
 int expotimes;
 u8 luma_mean = 130;
 u8 luma_delta = 20;


 if (sd->ag_cnt < 0)
  return;
 if (--sd->ag_cnt >= 0)
  return;
 sd->ag_cnt = AG_CNT_START;

 delta = atomic_read(&sd->avg_lum);
 PDEBUG(D_FRAM, "mean lum %d", delta);
 if (delta < luma_mean - luma_delta ||
     delta > luma_mean + luma_delta) {
  switch (sd->sensor) {
  case 130:
   expotimes = sd->exposure;
   expotimes += (luma_mean - delta) >> 6;
   if (expotimes < 0)
    expotimes = 0;
   sd->exposure = setexposure(gspca_dev,
         (unsigned int) expotimes);
   break;
  case 129:
   expotimes = sd->exposure >> 8;
   expotimes += (luma_mean - delta) >> 4;
   if (expotimes < 0)
    expotimes = 0;
   sd->exposure = setexposure(gspca_dev,
     (unsigned int) (expotimes << 8));
   break;
  case 128:
   expotimes = sd->exposure;
   expotimes += (luma_mean - delta) >> 2;
   if (expotimes < 0)
    expotimes = 0;
   sd->exposure = setexposure(gspca_dev,
         (unsigned int) expotimes);
   setredblue(gspca_dev);
   break;
  default:




   expotimes = sd->exposure;
   expotimes += (luma_mean - delta) >> 6;
   if (expotimes < 0)
    expotimes = 0;
   sd->exposure = setexposure(gspca_dev,
         (unsigned int) expotimes);
   setredblue(gspca_dev);
   break;
  }
 }
}
