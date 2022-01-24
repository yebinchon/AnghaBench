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
struct set_vf_state_cookie {int /*<<< orphan*/  state; struct bnx2x_virtf* vf; } ;
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct bnx2x_vfop_args_qx {int /*<<< orphan*/  qid; } ;
struct TYPE_2__ {struct bnx2x_vfop_args_qx qx; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_1__ args; } ;
struct bnx2x {int dummy; } ;
typedef  enum bnx2x_vfop_close_state { ____Placeholder_bnx2x_vfop_close_state } bnx2x_vfop_close_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
#define  BNX2X_VFOP_CLOSE_HW 129 
#define  BNX2X_VFOP_CLOSE_QUEUES 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  VF_ACQUIRED ; 
 int /*<<< orphan*/  bnx2x_set_vf_state ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,struct set_vf_state_cookie*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_virtf*) ; 
 struct bnx2x_vfop* FUNC5 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ; 
 scalar_t__ FUNC8 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x_virtf*) ; 

__attribute__((used)) static void FUNC11(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	struct bnx2x_vfop *vfop = FUNC5(bp, vf);
	struct bnx2x_vfop_args_qx *qx = &vfop->args.qx;
	enum bnx2x_vfop_close_state state = vfop->state;
	struct bnx2x_vfop_cmd cmd = {
		.done = bnx2x_vfop_close,
		.block = false,
	};

	if (vfop->rc < 0)
		goto op_err;

	FUNC1(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

	switch (state) {
	case BNX2X_VFOP_CLOSE_QUEUES:

		if (++(qx->qid) < FUNC10(vf)) {
			vfop->rc = FUNC9(bp, vf, &cmd, qx->qid);
			if (vfop->rc)
				goto op_err;
			return;
		}

		/* remove multicasts */
		vfop->state = BNX2X_VFOP_CLOSE_HW;
		vfop->rc = FUNC8(bp, vf, &cmd, NULL, 0, false);
		if (vfop->rc)
			goto op_err;
		return;

	case BNX2X_VFOP_CLOSE_HW:

		/* disable the interrupts */
		FUNC1(BNX2X_MSG_IOV, "disabling igu\n");
		FUNC4(bp, vf);

		/* disable the VF */
		FUNC1(BNX2X_MSG_IOV, "clearing qtbl\n");
		FUNC3(bp, vf);

		goto op_done;
	default:
		FUNC6(state);
	}
op_err:
	FUNC0("VF[%d] CLOSE error: rc %d\n", vf->abs_vfid, vfop->rc);
op_done:

	/* need to make sure there are no outstanding stats ramrods which may
	 * cause the device to access the VF's stats buffer which it will free
	 * as soon as we return from the close flow.
	 */
	{
		struct set_vf_state_cookie cookie;

		cookie.vf = vf;
		cookie.state = VF_ACQUIRED;
		FUNC2(bp, bnx2x_set_vf_state, &cookie);
	}

	FUNC1(BNX2X_MSG_IOV, "set state to acquired\n");
	FUNC7(bp, vf, vfop);
}