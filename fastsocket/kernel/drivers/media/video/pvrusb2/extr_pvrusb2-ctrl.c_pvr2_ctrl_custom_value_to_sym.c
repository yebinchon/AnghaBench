
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* info; } ;
struct TYPE_2__ {int (* val_to_sym ) (struct pvr2_ctrl*,int,int,char*,unsigned int,unsigned int*) ;} ;


 int EINVAL ;
 int stub1 (struct pvr2_ctrl*,int,int,char*,unsigned int,unsigned int*) ;

int pvr2_ctrl_custom_value_to_sym(struct pvr2_ctrl *cptr,
      int mask,int val,
      char *buf,unsigned int maxlen,
      unsigned int *len)
{
 if (!cptr) return -EINVAL;
 if (!cptr->info->val_to_sym) return -EINVAL;
 return cptr->info->val_to_sym(cptr,mask,val,buf,maxlen,len);
}
