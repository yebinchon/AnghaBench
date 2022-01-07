
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;


 size_t BLUE ;
 size_t RED ;
 int reg_w1 (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setredblue(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w1(gspca_dev, 0x05, sd->ctrls[RED].val);

 reg_w1(gspca_dev, 0x06, sd->ctrls[BLUE].val);
}
