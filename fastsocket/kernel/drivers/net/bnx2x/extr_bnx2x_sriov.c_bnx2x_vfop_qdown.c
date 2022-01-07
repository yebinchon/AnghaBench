
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct TYPE_3__ {int qid; } ;
struct TYPE_4__ {TYPE_1__ qx; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_2__ args; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_vfop_qteardown_state { ____Placeholder_bnx2x_vfop_qteardown_state } bnx2x_vfop_qteardown_state ;


 int BNX2X_ERR (char*,int ,int,scalar_t__) ;
 int BNX2X_MSG_IOV ;





 int DP (int ,char*,...) ;
 struct bnx2x_vfop* bnx2x_vfop_cur (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_default (int) ;
 int bnx2x_vfop_end (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ;
 scalar_t__ bnx2x_vfop_mac_delall_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int,int) ;
 scalar_t__ bnx2x_vfop_qdtor_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int) ;
 scalar_t__ bnx2x_vfop_rxmode_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int,int ) ;
 scalar_t__ bnx2x_vfop_vlan_delall_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int,int) ;

__attribute__((used)) static void bnx2x_vfop_qdown(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_cur(bp, vf);
 int qid = vfop->args.qx.qid;
 enum bnx2x_vfop_qteardown_state state = vfop->state;
 struct bnx2x_vfop_cmd cmd;

 if (vfop->rc < 0)
  goto op_err;

 DP(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

 cmd.done = bnx2x_vfop_qdown;
 cmd.block = 0;

 switch (state) {
 case 128:

  vfop->state = 131;
  vfop->rc = bnx2x_vfop_rxmode_cmd(bp, vf, &cmd, qid, 0);
  if (vfop->rc)
   goto op_err;
  return;

 case 131:

  vfop->state = 132;
  vfop->rc = bnx2x_vfop_vlan_delall_cmd(bp, vf, &cmd, qid, 0);
  if (vfop->rc)
   goto op_err;
  return;

 case 132:

  vfop->state = 129;
  vfop->rc = bnx2x_vfop_mac_delall_cmd(bp, vf, &cmd, qid, 0);
  if (vfop->rc)
   goto op_err;
  return;

 case 129:

  DP(BNX2X_MSG_IOV, "case: BNX2X_VFOP_QTEARDOWN_QDTOR\n");
  vfop->state = 130;
  DP(BNX2X_MSG_IOV, "new state: BNX2X_VFOP_QTEARDOWN_DONE\n");
  vfop->rc = bnx2x_vfop_qdtor_cmd(bp, vf, &cmd, qid);
  DP(BNX2X_MSG_IOV, "returned from cmd\n");
  if (vfop->rc)
   goto op_err;
  return;
op_err:
 BNX2X_ERR("QTEARDOWN[%d:%d] error: rc %d\n",
    vf->abs_vfid, qid, vfop->rc);

 case 130:
  bnx2x_vfop_end(bp, vf, vfop);
  return;
 default:
  bnx2x_vfop_default(state);
 }
}
