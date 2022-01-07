
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* info; } ;
struct TYPE_2__ {int v4l_id; } ;



int pvr2_ctrl_get_v4lid(struct pvr2_ctrl *cptr)
{
 if (!cptr) return 0;
 return cptr->info->v4l_id;
}
