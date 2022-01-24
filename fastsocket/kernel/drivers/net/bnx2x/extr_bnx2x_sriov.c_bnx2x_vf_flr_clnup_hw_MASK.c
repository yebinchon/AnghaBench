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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  DORQ_REG_VF_USAGE_CNT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	u32 poll_cnt = FUNC4(bp);

	/* DQ usage counter */
	FUNC6(bp, FUNC3(bp, vf->abs_vfid));
	FUNC5(bp, DORQ_REG_VF_USAGE_CNT,
					"DQ VF usage counter timed out",
					poll_cnt);
	FUNC6(bp, FUNC1(bp));

	/* FW cleanup command - poll for the results */
	if (FUNC7(bp, (u8)FUNC2(vf->abs_vfid),
				   poll_cnt))
		FUNC0("VF[%d] Final cleanup timed-out\n", vf->abs_vfid);

	/* verify TX hw is flushed */
	FUNC8(bp, poll_cnt);
}