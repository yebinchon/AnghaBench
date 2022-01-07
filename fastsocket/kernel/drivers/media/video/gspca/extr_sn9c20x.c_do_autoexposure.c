
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sd {int exposure; int exposure_step; int older_step; int old_step; } ;
struct gspca_dev {int dummy; } ;
typedef int s16 ;


 scalar_t__ MAX_AVG_LUM ;
 scalar_t__ MIN_AVG_LUM ;
 int set_exposure (struct gspca_dev*) ;

__attribute__((used)) static void do_autoexposure(struct gspca_dev *gspca_dev, u16 avg_lum)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s16 new_exp;






 if (avg_lum < MIN_AVG_LUM) {
  if (sd->exposure > 0x1770)
   return;

  new_exp = sd->exposure + sd->exposure_step;
  if (new_exp > 0x1770)
   new_exp = 0x1770;
  if (new_exp < 0x10)
   new_exp = 0x10;
  sd->exposure = new_exp;
  set_exposure(gspca_dev);

  sd->older_step = sd->old_step;
  sd->old_step = 1;

  if (sd->old_step ^ sd->older_step)
   sd->exposure_step /= 2;
  else
   sd->exposure_step += 2;
 }
 if (avg_lum > MAX_AVG_LUM) {
  if (sd->exposure < 0x10)
   return;
  new_exp = sd->exposure - sd->exposure_step;
  if (new_exp > 0x1700)
   new_exp = 0x1770;
  if (new_exp < 0x10)
   new_exp = 0x10;
  sd->exposure = new_exp;
  set_exposure(gspca_dev);
  sd->older_step = sd->old_step;
  sd->old_step = 0;

  if (sd->old_step ^ sd->older_step)
   sd->exposure_step /= 2;
  else
   sd->exposure_step += 2;
 }
}
