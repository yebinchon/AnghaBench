
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {unsigned int control_cnt; struct pvr2_ctrl* controls; } ;
struct pvr2_ctrl {TYPE_1__* info; } ;
struct TYPE_2__ {int v4l_id; } ;



struct pvr2_ctrl *pvr2_hdw_get_ctrl_v4l(struct pvr2_hdw *hdw,unsigned int ctl_id)
{
 struct pvr2_ctrl *cptr;
 unsigned int idx;
 int i;


 for (idx = 0; idx < hdw->control_cnt; idx++) {
  cptr = hdw->controls + idx;
  i = cptr->info->v4l_id;
  if (i && (i == ctl_id)) return cptr;
 }
 return ((void*)0);
}
