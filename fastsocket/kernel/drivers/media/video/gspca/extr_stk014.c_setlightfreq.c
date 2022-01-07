
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;


 size_t LIGHTFREQ ;
 int set_par (struct gspca_dev*,int) ;

__attribute__((used)) static void setlightfreq(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 set_par(gspca_dev, sd->ctrls[LIGHTFREQ].val == 1
   ? 0x33640000
   : 0x33780000);
}
