#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_virtf {int /*<<< orphan*/  cfg_flags; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct TYPE_3__ {int qid; } ;
struct TYPE_4__ {TYPE_1__ qctor; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_2__ args; } ;
struct bnx2x {int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  sp_rtnl_state; } ;
typedef  enum bnx2x_vfop_qsetup_state { ____Placeholder_bnx2x_vfop_qsetup_state } bnx2x_vfop_qsetup_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  BNX2X_SP_RTNL_HYPERVISOR_VLAN ; 
#define  BNX2X_VFOP_QSETUP_CTOR 130 
#define  BNX2X_VFOP_QSETUP_DONE 129 
#define  BNX2X_VFOP_QSETUP_VLAN0 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VF_CFG_VLAN ; 
 struct bnx2x_vfop* FUNC2 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ; 
 scalar_t__ FUNC5 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int) ; 
 scalar_t__ FUNC6 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	struct bnx2x_vfop *vfop = FUNC2(bp, vf);
	int qid = vfop->args.qctor.qid;
	enum bnx2x_vfop_qsetup_state state = vfop->state;
	struct bnx2x_vfop_cmd cmd = {
		.done = bnx2x_vfop_qsetup,
		.block = false,
	};

	if (vfop->rc < 0)
		goto op_err;

	FUNC1(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

	switch (state) {
	case BNX2X_VFOP_QSETUP_CTOR:
		/* init the queue ctor command */
		vfop->state = BNX2X_VFOP_QSETUP_VLAN0;
		vfop->rc = FUNC5(bp, vf, &cmd, qid);
		if (vfop->rc)
			goto op_err;
		return;

	case BNX2X_VFOP_QSETUP_VLAN0:
		/* skip if non-leading or FPGA/EMU*/
		if (qid)
			goto op_done;

		/* init the queue set-vlan command (for vlan 0) */
		vfop->state = BNX2X_VFOP_QSETUP_DONE;
		vfop->rc = FUNC6(bp, vf, &cmd, qid, 0, true);
		if (vfop->rc)
			goto op_err;
		return;
op_err:
	FUNC0("QSETUP[%d:%d] error: rc %d\n", vf->abs_vfid, qid, vfop->rc);
op_done:
	case BNX2X_VFOP_QSETUP_DONE:
		vf->cfg_flags |= VF_CFG_VLAN;
		FUNC10();
		FUNC8(BNX2X_SP_RTNL_HYPERVISOR_VLAN,
			&bp->sp_rtnl_state);
		FUNC9();
		FUNC7(&bp->sp_rtnl_task, 0);
		FUNC4(bp, vf, vfop);
		return;
	default:
		FUNC3(state);
	}
}