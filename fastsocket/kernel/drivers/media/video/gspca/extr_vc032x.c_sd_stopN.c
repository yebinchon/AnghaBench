
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor; int flags; } ;
struct gspca_dev {int dummy; } ;


 int FL_SAMSUNG ;


 int reg_w (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 129:
  reg_w(gspca_dev, 0x89, 0x058c, 0x00ff);
  break;
 case 128:
  return;
 default:
  if (!(sd->flags & FL_SAMSUNG))
   reg_w(gspca_dev, 0x89, 0xffff, 0xffff);
  break;
 }
 reg_w(gspca_dev, 0xa0, 0x01, 0xb301);
 reg_w(gspca_dev, 0xa0, 0x09, 0xb003);
}
