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
struct bnx2x_virtf {int /*<<< orphan*/  op_in_progress; } ;
struct bnx2x {int /*<<< orphan*/  sp_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int) ; 
 struct bnx2x_virtf* FUNC3 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  bnx2x_wq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct bnx2x *bp, int vf_cid, bool queue_work)
{
	struct bnx2x_virtf *vf;

	/* check if the cid is the VF range */
	if (!FUNC0(bp) || !FUNC2(bp, vf_cid))
		return;

	vf = FUNC3(bp, vf_cid);
	if (vf) {
		/* set in_progress flag */
		FUNC1(&vf->op_in_progress, 1);
		if (queue_work)
			FUNC4(bnx2x_wq, &bp->sp_task, 0);
	}
}