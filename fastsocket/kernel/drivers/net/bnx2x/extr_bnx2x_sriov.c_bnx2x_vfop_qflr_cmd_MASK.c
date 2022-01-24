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
struct bnx2x_virtf {int dummy; } ;
struct bnx2x_vfop_cmd {int /*<<< orphan*/  block; int /*<<< orphan*/  done; } ;
struct TYPE_3__ {int qid; } ;
struct TYPE_4__ {TYPE_1__ qx; } ;
struct bnx2x_vfop {TYPE_2__ args; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_VFOP_QFLR_CLR_VLAN ; 
 int ENOMEM ; 
 struct bnx2x_vfop* FUNC0 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnx2x_vfop_qflr ; 
 int FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bnx2x *bp,
			       struct bnx2x_virtf *vf,
			       struct bnx2x_vfop_cmd *cmd,
			       int qid)
{
	struct bnx2x_vfop *vfop = FUNC0(bp, vf);

	if (vfop) {
		vfop->args.qx.qid = qid;
		FUNC1(BNX2X_VFOP_QFLR_CLR_VLAN,
				 bnx2x_vfop_qflr, cmd->done);
		return FUNC2(bp, vf, bnx2x_vfop_qflr,
					     cmd->block);
	}
	return -ENOMEM;
}