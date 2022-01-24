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
struct TYPE_2__ {int valid_bitmap; } ;
struct bnx2x {int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  sp_rtnl_state; TYPE_1__ old_bulletin; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_SP_RTNL_VFPF_CHANNEL_DOWN ; 
 int CHANNEL_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct bnx2x *bp)
{
	FUNC0(bp);

	/* if channel is down we need to self destruct */
	if (bp->old_bulletin.valid_bitmap & 1 << CHANNEL_DOWN) {
		FUNC4();
		FUNC2(BNX2X_SP_RTNL_VFPF_CHANNEL_DOWN,
			&bp->sp_rtnl_state);
		FUNC3();
		FUNC1(&bp->sp_rtnl_task, 0);
	}
}