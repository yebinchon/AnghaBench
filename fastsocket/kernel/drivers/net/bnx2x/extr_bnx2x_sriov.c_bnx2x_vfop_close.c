
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct set_vf_state_cookie {int state; struct bnx2x_virtf* vf; } ;
struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct bnx2x_vfop_args_qx {int qid; } ;
struct TYPE_2__ {struct bnx2x_vfop_args_qx qx; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_1__ args; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_vfop_close_state { ____Placeholder_bnx2x_vfop_close_state } bnx2x_vfop_close_state ;


 int BNX2X_ERR (char*,int ,scalar_t__) ;
 int BNX2X_MSG_IOV ;


 int DP (int ,char*,...) ;
 int VF_ACQUIRED ;
 int bnx2x_set_vf_state ;
 int bnx2x_stats_safe_exec (struct bnx2x*,int ,struct set_vf_state_cookie*) ;
 int bnx2x_vf_clr_qtbl (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_igu_disable (struct bnx2x*,struct bnx2x_virtf*) ;
 struct bnx2x_vfop* bnx2x_vfop_cur (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_default (int) ;
 int bnx2x_vfop_end (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ;
 scalar_t__ bnx2x_vfop_mcast_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int *,int ,int) ;
 scalar_t__ bnx2x_vfop_qdown_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int ) ;
 int vf_rxq_count (struct bnx2x_virtf*) ;

__attribute__((used)) static void bnx2x_vfop_close(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_cur(bp, vf);
 struct bnx2x_vfop_args_qx *qx = &vfop->args.qx;
 enum bnx2x_vfop_close_state state = vfop->state;
 struct bnx2x_vfop_cmd cmd = {
  .done = bnx2x_vfop_close,
  .block = 0,
 };

 if (vfop->rc < 0)
  goto op_err;

 DP(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

 switch (state) {
 case 128:

  if (++(qx->qid) < vf_rxq_count(vf)) {
   vfop->rc = bnx2x_vfop_qdown_cmd(bp, vf, &cmd, qx->qid);
   if (vfop->rc)
    goto op_err;
   return;
  }


  vfop->state = 129;
  vfop->rc = bnx2x_vfop_mcast_cmd(bp, vf, &cmd, ((void*)0), 0, 0);
  if (vfop->rc)
   goto op_err;
  return;

 case 129:


  DP(BNX2X_MSG_IOV, "disabling igu\n");
  bnx2x_vf_igu_disable(bp, vf);


  DP(BNX2X_MSG_IOV, "clearing qtbl\n");
  bnx2x_vf_clr_qtbl(bp, vf);

  goto op_done;
 default:
  bnx2x_vfop_default(state);
 }
op_err:
 BNX2X_ERR("VF[%d] CLOSE error: rc %d\n", vf->abs_vfid, vfop->rc);
op_done:





 {
  struct set_vf_state_cookie cookie;

  cookie.vf = vf;
  cookie.state = VF_ACQUIRED;
  bnx2x_stats_safe_exec(bp, bnx2x_set_vf_state, &cookie);
 }

 DP(BNX2X_MSG_IOV, "set state to acquired\n");
 bnx2x_vfop_end(bp, vf, vfop);
}
