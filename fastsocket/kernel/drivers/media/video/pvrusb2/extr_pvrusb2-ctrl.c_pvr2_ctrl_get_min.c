
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_3__* hdw; TYPE_4__* info; } ;
struct TYPE_5__ {int min_value; } ;
struct TYPE_6__ {TYPE_1__ type_int; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ def; int (* get_min_value ) (struct pvr2_ctrl*,int*) ;} ;
struct TYPE_7__ {int big_lock; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 scalar_t__ pvr2_ctl_int ;
 int stub1 (struct pvr2_ctrl*,int*) ;

int pvr2_ctrl_get_min(struct pvr2_ctrl *cptr)
{
 int ret = 0;
 if (!cptr) return 0;
 LOCK_TAKE(cptr->hdw->big_lock); do {
  if (cptr->info->get_min_value) {
   cptr->info->get_min_value(cptr,&ret);
  } else if (cptr->info->type == pvr2_ctl_int) {
   ret = cptr->info->def.type_int.min_value;
  }
 } while(0); LOCK_GIVE(cptr->hdw->big_lock);
 return ret;
}
