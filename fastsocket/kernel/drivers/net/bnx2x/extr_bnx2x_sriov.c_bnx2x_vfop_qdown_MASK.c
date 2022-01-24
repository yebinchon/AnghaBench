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
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct TYPE_3__ {int qid; } ;
struct TYPE_4__ {TYPE_1__ qx; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_2__ args; } ;
struct bnx2x {int dummy; } ;
typedef  enum bnx2x_vfop_qteardown_state { ____Placeholder_bnx2x_vfop_qteardown_state } bnx2x_vfop_qteardown_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
#define  BNX2X_VFOP_QTEARDOWN_CLR_MAC 132 
#define  BNX2X_VFOP_QTEARDOWN_CLR_VLAN 131 
#define  BNX2X_VFOP_QTEARDOWN_DONE 130 
#define  BNX2X_VFOP_QTEARDOWN_QDTOR 129 
#define  BNX2X_VFOP_QTEARDOWN_RXMODE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct bnx2x_vfop* FUNC2 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ; 
 scalar_t__ FUNC5 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int,int) ; 
 scalar_t__ FUNC6 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int) ; 
 scalar_t__ FUNC7 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int,int) ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	struct bnx2x_vfop *vfop = FUNC2(bp, vf);
	int qid = vfop->args.qx.qid;
	enum bnx2x_vfop_qteardown_state state = vfop->state;
	struct bnx2x_vfop_cmd cmd;

	if (vfop->rc < 0)
		goto op_err;

	FUNC1(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

	cmd.done = bnx2x_vfop_qdown;
	cmd.block = false;

	switch (state) {
	case BNX2X_VFOP_QTEARDOWN_RXMODE:
		/* Drop all */
		vfop->state = BNX2X_VFOP_QTEARDOWN_CLR_VLAN;
		vfop->rc = FUNC7(bp, vf, &cmd, qid, 0);
		if (vfop->rc)
			goto op_err;
		return;

	case BNX2X_VFOP_QTEARDOWN_CLR_VLAN:
		/* vlan-clear-all: don't consume credit */
		vfop->state = BNX2X_VFOP_QTEARDOWN_CLR_MAC;
		vfop->rc = FUNC8(bp, vf, &cmd, qid, false);
		if (vfop->rc)
			goto op_err;
		return;

	case BNX2X_VFOP_QTEARDOWN_CLR_MAC:
		/* mac-clear-all: consume credit */
		vfop->state = BNX2X_VFOP_QTEARDOWN_QDTOR;
		vfop->rc = FUNC5(bp, vf, &cmd, qid, false);
		if (vfop->rc)
			goto op_err;
		return;

	case BNX2X_VFOP_QTEARDOWN_QDTOR:
		/* run the queue destruction flow */
		FUNC1(BNX2X_MSG_IOV, "case: BNX2X_VFOP_QTEARDOWN_QDTOR\n");
		vfop->state = BNX2X_VFOP_QTEARDOWN_DONE;
		FUNC1(BNX2X_MSG_IOV, "new state: BNX2X_VFOP_QTEARDOWN_DONE\n");
		vfop->rc = FUNC6(bp, vf, &cmd, qid);
		FUNC1(BNX2X_MSG_IOV, "returned from cmd\n");
		if (vfop->rc)
			goto op_err;
		return;
op_err:
	FUNC0("QTEARDOWN[%d:%d] error: rc %d\n",
		  vf->abs_vfid, qid, vfop->rc);

	case BNX2X_VFOP_QTEARDOWN_DONE:
		FUNC4(bp, vf, vfop);
		return;
	default:
		FUNC3(state);
	}
}