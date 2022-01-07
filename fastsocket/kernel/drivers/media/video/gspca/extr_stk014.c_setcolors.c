
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;


 size_t COLORS ;
 int set_par (struct gspca_dev*,int) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int parval;

 parval = 0x08000000
  + (sd->ctrls[COLORS].val << 16);
 set_par(gspca_dev, parval);
}
