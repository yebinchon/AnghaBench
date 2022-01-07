
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_queue_state_params {int cmd; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int EINVAL ;
 int bnx2x_q_init (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_activate (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_cfc_del (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_deactivate (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_empty (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_halt (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_setup_tx_only (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_terminate (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_update (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_q_send_update_tpa (struct bnx2x*,struct bnx2x_queue_state_params*) ;

__attribute__((used)) static inline int bnx2x_queue_send_cmd_cmn(struct bnx2x *bp,
     struct bnx2x_queue_state_params *params)
{
 switch (params->cmd) {
 case 132:
  return bnx2x_q_init(bp, params);
 case 131:
  return bnx2x_q_send_setup_tx_only(bp, params);
 case 135:
  return bnx2x_q_send_deactivate(bp, params);
 case 137:
  return bnx2x_q_send_activate(bp, params);
 case 129:
  return bnx2x_q_send_update(bp, params);
 case 128:
  return bnx2x_q_send_update_tpa(bp, params);
 case 133:
  return bnx2x_q_send_halt(bp, params);
 case 136:
  return bnx2x_q_send_cfc_del(bp, params);
 case 130:
  return bnx2x_q_send_terminate(bp, params);
 case 134:
  return bnx2x_q_send_empty(bp, params);
 default:
  BNX2X_ERR("Unknown command: %d\n", params->cmd);
  return -EINVAL;
 }
}
