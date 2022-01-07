
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_virtf {int cfg_flags; int abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct TYPE_3__ {int qid; } ;
struct TYPE_4__ {TYPE_1__ qctor; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_2__ args; } ;
struct bnx2x {int sp_rtnl_task; int sp_rtnl_state; } ;
typedef enum bnx2x_vfop_qsetup_state { ____Placeholder_bnx2x_vfop_qsetup_state } bnx2x_vfop_qsetup_state ;


 int BNX2X_ERR (char*,int ,int,scalar_t__) ;
 int BNX2X_MSG_IOV ;
 int BNX2X_SP_RTNL_HYPERVISOR_VLAN ;



 int DP (int ,char*,int ,int) ;
 int VF_CFG_VLAN ;
 struct bnx2x_vfop* bnx2x_vfop_cur (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_default (int) ;
 int bnx2x_vfop_end (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ;
 scalar_t__ bnx2x_vfop_qctor_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int) ;
 scalar_t__ bnx2x_vfop_vlan_set_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int,int ,int) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;

__attribute__((used)) static void bnx2x_vfop_qsetup(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_cur(bp, vf);
 int qid = vfop->args.qctor.qid;
 enum bnx2x_vfop_qsetup_state state = vfop->state;
 struct bnx2x_vfop_cmd cmd = {
  .done = bnx2x_vfop_qsetup,
  .block = 0,
 };

 if (vfop->rc < 0)
  goto op_err;

 DP(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

 switch (state) {
 case 130:

  vfop->state = 128;
  vfop->rc = bnx2x_vfop_qctor_cmd(bp, vf, &cmd, qid);
  if (vfop->rc)
   goto op_err;
  return;

 case 128:

  if (qid)
   goto op_done;


  vfop->state = 129;
  vfop->rc = bnx2x_vfop_vlan_set_cmd(bp, vf, &cmd, qid, 0, 1);
  if (vfop->rc)
   goto op_err;
  return;
op_err:
 BNX2X_ERR("QSETUP[%d:%d] error: rc %d\n", vf->abs_vfid, qid, vfop->rc);
op_done:
 case 129:
  vf->cfg_flags |= VF_CFG_VLAN;
  smp_mb__before_clear_bit();
  set_bit(BNX2X_SP_RTNL_HYPERVISOR_VLAN,
   &bp->sp_rtnl_state);
  smp_mb__after_clear_bit();
  schedule_delayed_work(&bp->sp_rtnl_task, 0);
  bnx2x_vfop_end(bp, vf, vfop);
  return;
 default:
  bnx2x_vfop_default(state);
 }
}
