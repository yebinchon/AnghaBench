#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vfop_args_qdtor {TYPE_6__* cxt; int /*<<< orphan*/  qid; } ;
struct TYPE_7__ {struct bnx2x_vfop_args_qdtor qdtor; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; TYPE_3__* op_p; TYPE_1__ args; } ;
struct bnx2x_queue_state_params {int /*<<< orphan*/  cmd; int /*<<< orphan*/  q_obj; } ;
struct bnx2x {int dummy; } ;
typedef  enum bnx2x_vfop_qdtor_state { ____Placeholder_bnx2x_vfop_qdtor_state } bnx2x_vfop_qdtor_state ;
struct TYPE_11__ {int /*<<< orphan*/  cdu_reserved; } ;
struct TYPE_10__ {int /*<<< orphan*/  cdu_usage; } ;
struct TYPE_12__ {TYPE_5__ xstorm_ag_context; TYPE_4__ ustorm_ag_context; } ;
struct TYPE_8__ {struct bnx2x_queue_state_params qstate; } ;
struct TYPE_9__ {TYPE_2__ qctor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  BNX2X_Q_CMD_CFC_DEL ; 
 int /*<<< orphan*/  BNX2X_Q_CMD_HALT ; 
 int /*<<< orphan*/  BNX2X_Q_CMD_TERMINATE ; 
 int /*<<< orphan*/  BNX2X_Q_LOGICAL_STATE_STOPPED ; 
#define  BNX2X_VFOP_QDTOR_CFCDEL 131 
#define  BNX2X_VFOP_QDTOR_DONE 130 
#define  BNX2X_VFOP_QDTOR_HALT 129 
#define  BNX2X_VFOP_QDTOR_TERMINATE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  VFOP_CONT ; 
 int /*<<< orphan*/  VFOP_DONE ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 struct bnx2x_vfop* FUNC4 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x_virtf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x_virtf*) ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	struct bnx2x_vfop *vfop = FUNC4(bp, vf);
	struct bnx2x_vfop_args_qdtor *qdtor = &vfop->args.qdtor;
	struct bnx2x_queue_state_params *q_params = &vfop->op_p->qctor.qstate;
	enum bnx2x_vfop_qdtor_state state = vfop->state;

	FUNC8(vf);

	if (vfop->rc < 0)
		goto op_err;

	FUNC1(BNX2X_MSG_IOV, "vf[%d] STATE: %d\n", vf->abs_vfid, state);

	switch (state) {
	case BNX2X_VFOP_QDTOR_HALT:

		/* has this queue already been stopped? */
		if (FUNC2(bp, q_params->q_obj) ==
		    BNX2X_Q_LOGICAL_STATE_STOPPED) {
			FUNC1(BNX2X_MSG_IOV,
			   "Entered qdtor but queue was already stopped. Aborting gracefully\n");
			goto op_done;
		}

		/* next state */
		vfop->state = BNX2X_VFOP_QDTOR_TERMINATE;

		q_params->cmd = BNX2X_Q_CMD_HALT;
		vfop->rc = FUNC3(bp, q_params);

		FUNC7(vf, vfop->rc, VFOP_CONT);

	case BNX2X_VFOP_QDTOR_TERMINATE:
		/* next state */
		vfop->state = BNX2X_VFOP_QDTOR_CFCDEL;

		q_params->cmd = BNX2X_Q_CMD_TERMINATE;
		vfop->rc = FUNC3(bp, q_params);

		FUNC7(vf, vfop->rc, VFOP_CONT);

	case BNX2X_VFOP_QDTOR_CFCDEL:
		/* next state */
		vfop->state = BNX2X_VFOP_QDTOR_DONE;

		q_params->cmd = BNX2X_Q_CMD_CFC_DEL;
		vfop->rc = FUNC3(bp, q_params);

		FUNC7(vf, vfop->rc, VFOP_DONE);
op_err:
	FUNC0("QDTOR[%d:%d] error: cmd %d, rc %d\n",
		  vf->abs_vfid, qdtor->qid, q_params->cmd, vfop->rc);
op_done:
	case BNX2X_VFOP_QDTOR_DONE:
		/* invalidate the context */
		qdtor->cxt->ustorm_ag_context.cdu_usage = 0;
		qdtor->cxt->xstorm_ag_context.cdu_reserved = 0;
		FUNC6(bp, vf, vfop);
		return;
	default:
		FUNC5(state);
	}
op_pending:
	return;
}