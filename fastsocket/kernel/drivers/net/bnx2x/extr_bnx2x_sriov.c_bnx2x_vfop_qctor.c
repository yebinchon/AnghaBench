
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vfop_args_qctor {int qid; int sb_idx; } ;
struct TYPE_5__ {struct bnx2x_vfop_args_qctor qctor; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_4__* op_p; TYPE_1__ args; } ;
struct TYPE_6__ {int setup; } ;
struct bnx2x_queue_state_params {int cmd; TYPE_2__ params; int q_obj; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_vfop_qctor_state { ____Placeholder_bnx2x_vfop_qctor_state } bnx2x_vfop_qctor_state ;
struct TYPE_7__ {int prep_qsetup; struct bnx2x_queue_state_params qstate; } ;
struct TYPE_8__ {TYPE_3__ qctor; } ;


 int BNX2X_ERR (char*,int ,int ,int ,scalar_t__) ;
 int BNX2X_MSG_IOV ;
 int BNX2X_Q_CMD_INIT ;
 int BNX2X_Q_CMD_SETUP ;
 int BNX2X_Q_LOGICAL_STATE_ACTIVE ;



 int DP (int ,char*,...) ;
 int IGU_INT_ENABLE ;
 int USTORM_ID ;
 int VFOP_CONT ;
 int bnx2x_get_q_logical_state (struct bnx2x*,int ) ;
 void* bnx2x_queue_state_change (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_vf_igu_ack_sb (struct bnx2x*,struct bnx2x_virtf*,int ,int ,int ,int ,int ) ;
 struct bnx2x_vfop* bnx2x_vfop_cur (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_default (int) ;
 int bnx2x_vfop_end (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ;
 int bnx2x_vfop_finalize (struct bnx2x_virtf*,scalar_t__,int ) ;
 int bnx2x_vfop_reset_wq (struct bnx2x_virtf*) ;
 int vf_igu_sb (struct bnx2x_virtf*,int ) ;

__attribute__((used)) static void bnx2x_vfop_qctor(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_cur(bp, vf);
 struct bnx2x_vfop_args_qctor *args = &vfop->args.qctor;
 struct bnx2x_queue_state_params *q_params = &vfop->op_p->qctor.qstate;
 enum bnx2x_vfop_qctor_state state = vfop->state;

 bnx2x_vfop_reset_wq(vf);

 if (vfop->rc < 0)
  goto op_err;

 DP(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

 switch (state) {
 case 130:


  if (bnx2x_get_q_logical_state(bp, q_params->q_obj) ==
      BNX2X_Q_LOGICAL_STATE_ACTIVE) {
   DP(BNX2X_MSG_IOV,
      "Entered qctor but queue was already up. Aborting gracefully\n");
   goto op_done;
  }


  vfop->state = 128;

  q_params->cmd = BNX2X_Q_CMD_INIT;
  vfop->rc = bnx2x_queue_state_change(bp, q_params);

  bnx2x_vfop_finalize(vf, vfop->rc, VFOP_CONT);

 case 128:

  vfop->state = 129;


  vfop->op_p->qctor.qstate.params.setup =
   vfop->op_p->qctor.prep_qsetup;

  q_params->cmd = BNX2X_Q_CMD_SETUP;
  vfop->rc = bnx2x_queue_state_change(bp, q_params);

  bnx2x_vfop_finalize(vf, vfop->rc, VFOP_CONT);

 case 129:


  bnx2x_vf_igu_ack_sb(bp, vf, vf_igu_sb(vf, args->sb_idx),
        USTORM_ID, 0, IGU_INT_ENABLE, 0);
  goto op_done;
 default:
  bnx2x_vfop_default(state);
 }
op_err:
 BNX2X_ERR("QCTOR[%d:%d] error: cmd %d, rc %d\n",
    vf->abs_vfid, args->qid, q_params->cmd, vfop->rc);
op_done:
 bnx2x_vfop_end(bp, vf, vfop);
op_pending:
 return;
}
