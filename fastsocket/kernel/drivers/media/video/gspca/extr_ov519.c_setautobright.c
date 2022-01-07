
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ val; } ;


 size_t AUTOBRIGHT ;
 int i2c_w_mask (struct sd*,int,int,int) ;

__attribute__((used)) static void setautobright(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 i2c_w_mask(sd, 0x2d, sd->ctrls[AUTOBRIGHT].val ? 0x10 : 0x00, 0x10);
}
