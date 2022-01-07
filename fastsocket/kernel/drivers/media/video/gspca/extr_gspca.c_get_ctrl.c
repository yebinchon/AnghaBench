
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gspca_dev {int ctrl_dis; TYPE_1__* sd_desc; } ;
struct TYPE_4__ {int id; } ;
struct ctrl {TYPE_2__ qctrl; } ;
struct TYPE_3__ {int nctrls; struct ctrl* ctrls; } ;



__attribute__((used)) static int get_ctrl(struct gspca_dev *gspca_dev,
       int id)
{
 const struct ctrl *ctrls;
 int i;

 for (i = 0, ctrls = gspca_dev->sd_desc->ctrls;
      i < gspca_dev->sd_desc->nctrls;
      i++, ctrls++) {
  if (gspca_dev->ctrl_dis & (1 << i))
   continue;
  if (id == ctrls->qctrl.id)
   return i;
 }
 return -1;
}
