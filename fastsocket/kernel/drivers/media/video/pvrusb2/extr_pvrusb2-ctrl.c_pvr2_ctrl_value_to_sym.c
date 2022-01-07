
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* hdw; } ;
struct TYPE_2__ {int big_lock; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_ctrl_value_to_sym_internal (struct pvr2_ctrl*,int,int,char*,unsigned int,unsigned int*) ;

int pvr2_ctrl_value_to_sym(struct pvr2_ctrl *cptr,
      int mask,int val,
      char *buf,unsigned int maxlen,
      unsigned int *len)
{
 int ret;
 LOCK_TAKE(cptr->hdw->big_lock); do {
  ret = pvr2_ctrl_value_to_sym_internal(cptr,mask,val,
            buf,maxlen,len);
 } while(0); LOCK_GIVE(cptr->hdw->big_lock);
 return ret;
}
