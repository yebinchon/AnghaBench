
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vfop_args_mcast {int mc_num; TYPE_4__* mc; } ;
struct TYPE_7__ {struct bnx2x_vfop_args_mcast mc_list; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_3__ args; TYPE_1__* op_p; } ;
struct bnx2x_raw_obj {int (* check_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_mcast_ramrod_params {int mcast_list; TYPE_2__* mcast_obj; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_vfop_mcast_state { ____Placeholder_bnx2x_vfop_mcast_state } bnx2x_vfop_mcast_state ;
struct TYPE_8__ {int link; } ;
struct TYPE_6__ {struct bnx2x_raw_obj raw; } ;
struct TYPE_5__ {struct bnx2x_mcast_ramrod_params mcast; } ;


 int BNX2X_ERR (char*,scalar_t__) ;
 int BNX2X_MCAST_CMD_ADD ;
 int BNX2X_MCAST_CMD_DEL ;
 int BNX2X_MSG_IOV ;



 int DP (int ,char*,int ,int) ;
 int INIT_LIST_HEAD (int *) ;
 int VFOP_CONT ;
 int VFOP_DONE ;
 void* bnx2x_config_mcast (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int ) ;
 struct bnx2x_vfop* bnx2x_vfop_cur (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_default (int) ;
 int bnx2x_vfop_end (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ;
 int bnx2x_vfop_finalize (struct bnx2x_virtf*,scalar_t__,int ) ;
 int bnx2x_vfop_reset_wq (struct bnx2x_virtf*) ;
 int kfree (TYPE_4__*) ;
 int list_add_tail (int *,int *) ;
 int stub1 (struct bnx2x_raw_obj*) ;
 int stub2 (struct bnx2x_raw_obj*) ;

__attribute__((used)) static void bnx2x_vfop_mcast(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_cur(bp, vf);
 struct bnx2x_mcast_ramrod_params *mcast = &vfop->op_p->mcast;
 struct bnx2x_raw_obj *raw = &mcast->mcast_obj->raw;
 struct bnx2x_vfop_args_mcast *args = &vfop->args.mc_list;
 enum bnx2x_vfop_mcast_state state = vfop->state;
 int i;

 bnx2x_vfop_reset_wq(vf);

 if (vfop->rc < 0)
  goto op_err;

 DP(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

 switch (state) {
 case 128:

  vfop->state = 130;
  vfop->rc = bnx2x_config_mcast(bp, mcast, BNX2X_MCAST_CMD_DEL);
  bnx2x_vfop_finalize(vf, vfop->rc, VFOP_CONT);

 case 130:
  if (raw->check_pending(raw))
   goto op_pending;

  if (args->mc_num) {

   INIT_LIST_HEAD(&mcast->mcast_list);
   for (i = 0; i < args->mc_num; i++)
    list_add_tail(&(args->mc[i].link),
           &mcast->mcast_list);

   vfop->state = 129;
   vfop->rc = bnx2x_config_mcast(bp, mcast,
            BNX2X_MCAST_CMD_ADD);
  }
  bnx2x_vfop_finalize(vf, vfop->rc, VFOP_DONE);

 case 129:
  vfop->rc = raw->check_pending(raw) ? 1 : 0;
  bnx2x_vfop_finalize(vf, vfop->rc, VFOP_DONE);
 default:
  bnx2x_vfop_default(state);
 }
op_err:
 BNX2X_ERR("MCAST CONFIG error: rc %d\n", vfop->rc);
op_done:
 kfree(args->mc);
 bnx2x_vfop_end(bp, vf, vfop);
op_pending:
 return;
}
