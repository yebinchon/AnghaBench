#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_virtf {int /*<<< orphan*/  flr_clnup_stage; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct bnx2x_vfop_args_qx {int /*<<< orphan*/  qid; } ;
struct TYPE_2__ {struct bnx2x_vfop_args_qx qx; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_1__ args; } ;
struct bnx2x {int dummy; } ;
typedef  enum bnx2x_vfop_flr_state { ____Placeholder_bnx2x_vfop_flr_state } bnx2x_vfop_flr_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
#define  BNX2X_VFOP_FLR_HW 129 
#define  BNX2X_VFOP_FLR_QUEUES 128 
 int /*<<< orphan*/  CHANNEL_TLV_FLR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VF_FLR_ACK ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_virtf*) ; 
 struct bnx2x_vfop* FUNC6 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ; 
 scalar_t__ FUNC9 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x_virtf*) ; 

__attribute__((used)) static void FUNC12(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	struct bnx2x_vfop *vfop = FUNC6(bp, vf);
	struct bnx2x_vfop_args_qx *qx = &vfop->args.qx;
	enum bnx2x_vfop_flr_state state = vfop->state;
	struct bnx2x_vfop_cmd cmd = {
		.done = bnx2x_vfop_flr,
		.block = false,
	};

	if (vfop->rc < 0)
		goto op_err;

	FUNC1(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

	switch (state) {
	case BNX2X_VFOP_FLR_QUEUES:
		/* the cleanup operations are valid if and only if the VF
		 * was first acquired.
		 */
		if (++(qx->qid) < FUNC11(vf)) {
			vfop->rc = FUNC10(bp, vf, &cmd,
						       qx->qid);
			if (vfop->rc)
				goto op_err;
			return;
		}
		/* remove multicasts */
		vfop->state = BNX2X_VFOP_FLR_HW;
		vfop->rc = FUNC9(bp, vf, &cmd, NULL,
						0, true);
		if (vfop->rc)
			goto op_err;
		return;
	case BNX2X_VFOP_FLR_HW:

		/* dispatch final cleanup and wait for HW queues to flush */
		FUNC4(bp, vf);

		/* release VF resources */
		FUNC5(bp, vf);

		/* re-open the mailbox */
		FUNC3(bp, vf->abs_vfid);

		goto op_done;
	default:
		FUNC7(state);
	}
op_err:
	FUNC0("VF[%d] FLR error: rc %d\n", vf->abs_vfid, vfop->rc);
op_done:
	vf->flr_clnup_stage = VF_FLR_ACK;
	FUNC8(bp, vf, vfop);
	FUNC2(bp, vf, CHANNEL_TLV_FLR);
}