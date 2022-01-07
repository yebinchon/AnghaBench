
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ctrl {int dummy; } ;


 int pvr2_ctrl_set_mask_value (struct pvr2_ctrl*,int ,int) ;

int pvr2_ctrl_set_value(struct pvr2_ctrl *cptr,int val)
{
 return pvr2_ctrl_set_mask_value(cptr,~0,val);
}
