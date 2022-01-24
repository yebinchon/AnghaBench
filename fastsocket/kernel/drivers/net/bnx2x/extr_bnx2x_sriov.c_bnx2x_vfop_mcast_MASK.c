#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vfop_args_mcast {int mc_num; TYPE_4__* mc; } ;
struct TYPE_7__ {struct bnx2x_vfop_args_mcast mc_list; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_3__ args; TYPE_1__* op_p; } ;
struct bnx2x_raw_obj {int /*<<< orphan*/  (* check_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_mcast_ramrod_params {int /*<<< orphan*/  mcast_list; TYPE_2__* mcast_obj; } ;
struct bnx2x {int dummy; } ;
typedef  enum bnx2x_vfop_mcast_state { ____Placeholder_bnx2x_vfop_mcast_state } bnx2x_vfop_mcast_state ;
struct TYPE_8__ {int /*<<< orphan*/  link; } ;
struct TYPE_6__ {struct bnx2x_raw_obj raw; } ;
struct TYPE_5__ {struct bnx2x_mcast_ramrod_params mcast; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_ADD ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_DEL ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
#define  BNX2X_VFOP_MCAST_ADD 130 
#define  BNX2X_VFOP_MCAST_CHK_DONE 129 
#define  BNX2X_VFOP_MCAST_DEL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VFOP_CONT ; 
 int /*<<< orphan*/  VFOP_DONE ; 
 void* FUNC3 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 
 struct bnx2x_vfop* FUNC4 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x_virtf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x_raw_obj*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x_raw_obj*) ; 

__attribute__((used)) static void FUNC13(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	struct bnx2x_vfop *vfop = FUNC4(bp, vf);
	struct bnx2x_mcast_ramrod_params *mcast = &vfop->op_p->mcast;
	struct bnx2x_raw_obj *raw = &mcast->mcast_obj->raw;
	struct bnx2x_vfop_args_mcast *args = &vfop->args.mc_list;
	enum bnx2x_vfop_mcast_state state = vfop->state;
	int i;

	FUNC8(vf);

	if (vfop->rc < 0)
		goto op_err;

	FUNC1(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

	switch (state) {
	case BNX2X_VFOP_MCAST_DEL:
		/* clear existing mcasts */
		vfop->state = BNX2X_VFOP_MCAST_ADD;
		vfop->rc = FUNC3(bp, mcast, BNX2X_MCAST_CMD_DEL);
		FUNC7(vf, vfop->rc, VFOP_CONT);

	case BNX2X_VFOP_MCAST_ADD:
		if (raw->check_pending(raw))
			goto op_pending;

		if (args->mc_num) {
			/* update mcast list on the ramrod params */
			FUNC2(&mcast->mcast_list);
			for (i = 0; i < args->mc_num; i++)
				FUNC10(&(args->mc[i].link),
					      &mcast->mcast_list);
			/* add new mcasts */
			vfop->state = BNX2X_VFOP_MCAST_CHK_DONE;
			vfop->rc = FUNC3(bp, mcast,
						      BNX2X_MCAST_CMD_ADD);
		}
		FUNC7(vf, vfop->rc, VFOP_DONE);

	case BNX2X_VFOP_MCAST_CHK_DONE:
		vfop->rc = raw->check_pending(raw) ? 1 : 0;
		FUNC7(vf, vfop->rc, VFOP_DONE);
	default:
		FUNC5(state);
	}
op_err:
	FUNC0("MCAST CONFIG error: rc %d\n", vfop->rc);
op_done:
	FUNC9(args->mc);
	FUNC6(bp, vf, vfop);
op_pending:
	return;
}