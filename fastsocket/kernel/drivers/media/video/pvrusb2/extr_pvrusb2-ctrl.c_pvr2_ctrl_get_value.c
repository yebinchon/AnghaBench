
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_2__* hdw; TYPE_1__* info; } ;
struct TYPE_4__ {int big_lock; } ;
struct TYPE_3__ {int (* get_value ) (struct pvr2_ctrl*,int*) ;} ;


 int EINVAL ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int stub1 (struct pvr2_ctrl*,int*) ;

int pvr2_ctrl_get_value(struct pvr2_ctrl *cptr,int *valptr)
{
 int ret = 0;
 if (!cptr) return -EINVAL;
 LOCK_TAKE(cptr->hdw->big_lock); do {
  ret = cptr->info->get_value(cptr,valptr);
 } while(0); LOCK_GIVE(cptr->hdw->big_lock);
 return ret;
}
