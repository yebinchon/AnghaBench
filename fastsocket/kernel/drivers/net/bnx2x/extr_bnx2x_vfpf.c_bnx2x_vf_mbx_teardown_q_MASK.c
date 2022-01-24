#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_virtf {int /*<<< orphan*/  op_rc; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vfop_cmd {int block; int /*<<< orphan*/  (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;} ;
struct bnx2x_vf_mbx {TYPE_3__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {int vf_qid; } ;
struct TYPE_5__ {TYPE_1__ q_op; } ;
struct TYPE_6__ {TYPE_2__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int) ; 

__attribute__((used)) static void FUNC3(struct bnx2x *bp, struct bnx2x_virtf *vf,
				    struct bnx2x_vf_mbx *mbx)
{
	int qid = mbx->msg->req.q_op.vf_qid;
	struct bnx2x_vfop_cmd cmd = {
		.done = bnx2x_vf_mbx_resp,
		.block = false,
	};

	FUNC0(BNX2X_MSG_IOV, "VF[%d] Q_TEARDOWN: vf_qid=%d\n",
	   vf->abs_vfid, qid);

	vf->op_rc = FUNC2(bp, vf, &cmd, qid);
	if (vf->op_rc)
		FUNC1(bp, vf);
}