
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_state_params {int ramrod_flags; int cmd; int * f_obj; int * member_0; } ;
struct bnx2x {int func_obj; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_F_CMD_TX_STOP ;
 int BNX2X_MSG_DCB ;
 int DP (int ,char*) ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_RETRY ;
 int __set_bit (int ,int *) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_panic () ;

int bnx2x_dcbx_stop_hw_tx(struct bnx2x *bp)
{
 struct bnx2x_func_state_params func_params = {((void*)0)};
 int rc;

 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_TX_STOP;

 __set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
 __set_bit(RAMROD_RETRY, &func_params.ramrod_flags);

 DP(BNX2X_MSG_DCB, "STOP TRAFFIC\n");

 rc = bnx2x_func_state_change(bp, &func_params);
 if (rc) {
  BNX2X_ERR("Unable to hold traffic for HW configuration\n");
  bnx2x_panic();
 }

 return rc;
}
