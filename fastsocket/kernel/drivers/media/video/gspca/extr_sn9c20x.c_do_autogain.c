
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sd {int gain; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ MAX_AVG_LUM ;
 scalar_t__ MIN_AVG_LUM ;
 int set_gain (struct gspca_dev*) ;

__attribute__((used)) static void do_autogain(struct gspca_dev *gspca_dev, u16 avg_lum)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (avg_lum < MIN_AVG_LUM) {
  if (sd->gain + 1 <= 28) {
   sd->gain++;
   set_gain(gspca_dev);
  }
 }
 if (avg_lum > MAX_AVG_LUM) {
  if (sd->gain > 0) {
   sd->gain--;
   set_gain(gspca_dev);
  }
 }
}
