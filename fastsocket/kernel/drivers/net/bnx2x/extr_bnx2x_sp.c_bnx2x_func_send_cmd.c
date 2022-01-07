
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_state_params {int cmd; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int EINVAL ;
 int bnx2x_func_hw_init (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_func_hw_reset (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_func_send_afex_update (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_func_send_afex_viflists (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_func_send_start (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_func_send_stop (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_func_send_switch_update (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_func_send_tx_start (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_func_send_tx_stop (struct bnx2x*,struct bnx2x_func_state_params*) ;

__attribute__((used)) static int bnx2x_func_send_cmd(struct bnx2x *bp,
          struct bnx2x_func_state_params *params)
{
 switch (params->cmd) {
 case 134:
  return bnx2x_func_hw_init(bp, params);
 case 132:
  return bnx2x_func_send_start(bp, params);
 case 131:
  return bnx2x_func_send_stop(bp, params);
 case 133:
  return bnx2x_func_hw_reset(bp, params);
 case 136:
  return bnx2x_func_send_afex_update(bp, params);
 case 135:
  return bnx2x_func_send_afex_viflists(bp, params);
 case 128:
  return bnx2x_func_send_tx_stop(bp, params);
 case 129:
  return bnx2x_func_send_tx_start(bp, params);
 case 130:
  return bnx2x_func_send_switch_update(bp, params);
 default:
  BNX2X_ERR("Unknown command: %d\n", params->cmd);
  return -EINVAL;
 }
}
