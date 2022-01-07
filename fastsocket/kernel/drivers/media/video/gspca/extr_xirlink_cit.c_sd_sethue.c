
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ stop_on_control_change; int hue; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;


 int cit_restart_stream (struct gspca_dev*) ;
 int cit_set_hue (struct gspca_dev*) ;
 int sd_stopN (struct gspca_dev*) ;

__attribute__((used)) static int sd_sethue(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->hue = val;
 if (gspca_dev->streaming) {
  if (sd->stop_on_control_change)
   sd_stopN(gspca_dev);
  cit_set_hue(gspca_dev);
  if (sd->stop_on_control_change)
   cit_restart_stream(gspca_dev);
 }
 return 0;
}
