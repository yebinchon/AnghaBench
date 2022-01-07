
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_func_switch_update_params {int suspend; } ;
struct TYPE_2__ {struct bnx2x_func_switch_update_params switch_update; } ;
struct bnx2x_func_state_params {int cmd; int * f_obj; int ramrod_flags; TYPE_1__ params; int * member_0; } ;
struct bnx2x {int func_obj; } ;


 int BNX2X_F_CMD_SWITCH_UPDATE ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_RETRY ;
 int __set_bit (int ,int *) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;

__attribute__((used)) static inline int bnx2x_func_switch_update(struct bnx2x *bp, int suspend)
{
 int rc;
 struct bnx2x_func_state_params func_params = {((void*)0)};
 struct bnx2x_func_switch_update_params *switch_update_params =
  &func_params.params.switch_update;


 __set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
 __set_bit(RAMROD_RETRY, &func_params.ramrod_flags);

 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_SWITCH_UPDATE;


 switch_update_params->suspend = suspend;

 rc = bnx2x_func_state_change(bp, &func_params);

 return rc;
}
