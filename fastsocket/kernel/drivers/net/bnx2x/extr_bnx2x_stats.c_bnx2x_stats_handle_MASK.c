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
struct bnx2x {int stats_state; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  panic; } ;
typedef  enum bnx2x_stats_state { ____Placeholder_bnx2x_stats_state } bnx2x_stats_state ;
typedef  enum bnx2x_stats_event { ____Placeholder_bnx2x_stats_event } bnx2x_stats_event ;
struct TYPE_2__ {int next_state; void (* action ) (struct bnx2x*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int STATS_EVENT_UPDATE ; 
 TYPE_1__** bnx2x_stats_stm ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct bnx2x *bp, enum bnx2x_stats_event event)
{
	enum bnx2x_stats_state state;
	void (*action)(struct bnx2x *bp);
	if (FUNC4(bp->panic))
		return;

	FUNC2(&bp->stats_lock);
	state = bp->stats_state;
	bp->stats_state = bnx2x_stats_stm[state][event].next_state;
	action = bnx2x_stats_stm[state][event].action;
	FUNC3(&bp->stats_lock);

	action(bp);

	if ((event != STATS_EVENT_UPDATE) || FUNC1(bp))
		FUNC0(BNX2X_MSG_STATS, "state %d -> event %d -> state %d\n",
		   state, event, bp->stats_state);
}