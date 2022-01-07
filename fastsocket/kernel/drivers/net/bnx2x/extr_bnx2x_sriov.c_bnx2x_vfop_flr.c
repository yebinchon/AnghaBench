
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_virtf {int flr_clnup_stage; int abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct bnx2x_vfop_args_qx {int qid; } ;
struct TYPE_2__ {struct bnx2x_vfop_args_qx qx; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_1__ args; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_vfop_flr_state { ____Placeholder_bnx2x_vfop_flr_state } bnx2x_vfop_flr_state ;


 int BNX2X_ERR (char*,int ,scalar_t__) ;
 int BNX2X_MSG_IOV ;


 int CHANNEL_TLV_FLR ;
 int DP (int ,char*,int ,int) ;
 int VF_FLR_ACK ;
 int bnx2x_unlock_vf_pf_channel (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_vf_enable_mbx (struct bnx2x*,int ) ;
 int bnx2x_vf_flr_clnup_hw (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_free_resc (struct bnx2x*,struct bnx2x_virtf*) ;
 struct bnx2x_vfop* bnx2x_vfop_cur (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_default (int) ;
 int bnx2x_vfop_end (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ;
 scalar_t__ bnx2x_vfop_mcast_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int *,int ,int) ;
 scalar_t__ bnx2x_vfop_qflr_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int ) ;
 int vf_rxq_count (struct bnx2x_virtf*) ;

__attribute__((used)) static void bnx2x_vfop_flr(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_cur(bp, vf);
 struct bnx2x_vfop_args_qx *qx = &vfop->args.qx;
 enum bnx2x_vfop_flr_state state = vfop->state;
 struct bnx2x_vfop_cmd cmd = {
  .done = bnx2x_vfop_flr,
  .block = 0,
 };

 if (vfop->rc < 0)
  goto op_err;

 DP(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

 switch (state) {
 case 128:



  if (++(qx->qid) < vf_rxq_count(vf)) {
   vfop->rc = bnx2x_vfop_qflr_cmd(bp, vf, &cmd,
             qx->qid);
   if (vfop->rc)
    goto op_err;
   return;
  }

  vfop->state = 129;
  vfop->rc = bnx2x_vfop_mcast_cmd(bp, vf, &cmd, ((void*)0),
      0, 1);
  if (vfop->rc)
   goto op_err;
  return;
 case 129:


  bnx2x_vf_flr_clnup_hw(bp, vf);


  bnx2x_vf_free_resc(bp, vf);


  bnx2x_vf_enable_mbx(bp, vf->abs_vfid);

  goto op_done;
 default:
  bnx2x_vfop_default(state);
 }
op_err:
 BNX2X_ERR("VF[%d] FLR error: rc %d\n", vf->abs_vfid, vfop->rc);
op_done:
 vf->flr_clnup_stage = VF_FLR_ACK;
 bnx2x_vfop_end(bp, vf, vfop);
 bnx2x_unlock_vf_pf_channel(bp, vf, CHANNEL_TLV_FLR);
}
