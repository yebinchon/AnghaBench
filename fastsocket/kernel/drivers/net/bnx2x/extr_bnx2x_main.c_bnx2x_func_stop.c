
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_state_params {int ramrod_flags; int cmd; int * f_obj; int * member_0; } ;
struct bnx2x {int func_obj; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_F_CMD_STOP ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_DRV_CLR_ONLY ;
 int __set_bit (int ,int *) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;

__attribute__((used)) static int bnx2x_func_stop(struct bnx2x *bp)
{
 struct bnx2x_func_state_params func_params = {((void*)0)};
 int rc;


 __set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_STOP;







 rc = bnx2x_func_state_change(bp, &func_params);
 if (rc) {



  BNX2X_ERR("FUNC_STOP ramrod failed. Running a dry transaction\n");
  __set_bit(RAMROD_DRV_CLR_ONLY, &func_params.ramrod_flags);
  return bnx2x_func_state_change(bp, &func_params);

 }

 return 0;
}
