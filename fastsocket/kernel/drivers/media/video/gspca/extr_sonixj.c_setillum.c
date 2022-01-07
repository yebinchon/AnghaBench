
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int sensor; TYPE_1__* ctrls; } ;
struct gspca_dev {int ctrl_dis; } ;
struct TYPE_2__ {int val; } ;


 int ILLUM ;


 int reg_w1 (struct gspca_dev*,int,int) ;
 int starcam ;

__attribute__((used)) static void setillum(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (gspca_dev->ctrl_dis & (1 << ILLUM))
  return;
 switch (sd->sensor) {
 case 129:
  reg_w1(gspca_dev, 0x02,
   sd->ctrls[ILLUM].val ? 0x64 : 0x60);
  break;
 case 128:
  if (starcam)
   reg_w1(gspca_dev, 0x02,
    sd->ctrls[ILLUM].val ?
      0x55 : 0x54);
  else
   reg_w1(gspca_dev, 0x02,
    sd->ctrls[ILLUM].val ?
      0x66 : 0x64);
  break;
 }
}
