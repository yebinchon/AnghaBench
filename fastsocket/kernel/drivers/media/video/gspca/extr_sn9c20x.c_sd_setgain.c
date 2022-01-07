
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int gain; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int s32 ;


 int set_gain (struct gspca_dev*) ;

__attribute__((used)) static int sd_setgain(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->gain = val;
 if (gspca_dev->streaming)
  return set_gain(gspca_dev);
 return 0;
}
