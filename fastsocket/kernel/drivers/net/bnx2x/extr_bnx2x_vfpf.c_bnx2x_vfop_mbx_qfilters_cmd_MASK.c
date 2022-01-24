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
struct bnx2x_virtf {int dummy; } ;
struct bnx2x_vfop_cmd {int /*<<< orphan*/  block; int /*<<< orphan*/  done; } ;
struct bnx2x_vfop {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_VFOP_MBX_Q_FILTERS_MACS ; 
 int ENOMEM ; 
 struct bnx2x_vfop* FUNC0 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  bnx2x_vfop_mbx_qfilters ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bnx2x *bp,
					struct bnx2x_virtf *vf,
					struct bnx2x_vfop_cmd *cmd)
{
	struct bnx2x_vfop *vfop = FUNC0(bp, vf);
	if (vfop) {
		FUNC1(BNX2X_VFOP_MBX_Q_FILTERS_MACS,
				 bnx2x_vfop_mbx_qfilters, cmd->done);
		return FUNC2(bp, vf, bnx2x_vfop_mbx_qfilters,
					     cmd->block);
	}
	return -ENOMEM;
}