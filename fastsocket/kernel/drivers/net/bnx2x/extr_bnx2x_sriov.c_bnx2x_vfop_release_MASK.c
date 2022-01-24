#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bnx2x_virtf {int state; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct bnx2x_vfop {scalar_t__ rc; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
#define  VF_ACQUIRED 131 
#define  VF_ENABLED 130 
#define  VF_FREE 129 
#define  VF_RESET 128 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*) ; 
 scalar_t__ FUNC3 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*) ; 
 struct bnx2x_vfop* FUNC4 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ; 

__attribute__((used)) static void FUNC7(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	struct bnx2x_vfop *vfop = FUNC4(bp, vf);
	struct bnx2x_vfop_cmd cmd = {
		.done = bnx2x_vfop_release,
		.block = false,
	};

	FUNC1(BNX2X_MSG_IOV, "vfop->rc %d\n", vfop->rc);

	if (vfop->rc < 0)
		goto op_err;

	FUNC1(BNX2X_MSG_IOV, "VF[%d] STATE: %s\n", vf->abs_vfid,
	   vf->state == VF_FREE ? "Free" :
	   vf->state == VF_ACQUIRED ? "Acquired" :
	   vf->state == VF_ENABLED ? "Enabled" :
	   vf->state == VF_RESET ? "Reset" :
	   "Unknown");

	switch (vf->state) {
	case VF_ENABLED:
		vfop->rc = FUNC3(bp, vf, &cmd);
		if (vfop->rc)
			goto op_err;
		return;

	case VF_ACQUIRED:
		FUNC1(BNX2X_MSG_IOV, "about to free resources\n");
		FUNC2(bp, vf);
		FUNC1(BNX2X_MSG_IOV, "vfop->rc %d\n", vfop->rc);
		goto op_done;

	case VF_FREE:
	case VF_RESET:
		/* do nothing */
		goto op_done;
	default:
		FUNC5(vf->state);
	}
op_err:
	FUNC0("VF[%d] RELEASE error: rc %d\n", vf->abs_vfid, vfop->rc);
op_done:
	FUNC6(bp, vf, vfop);
}