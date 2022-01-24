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
struct bc_state {int busy; TYPE_2__* cs; int /*<<< orphan*/  channel; scalar_t__ use_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct bc_state *bcs)
{
	unsigned long flags;

	FUNC1(&bcs->cs->lock, flags);
	if (bcs->use_count || !FUNC3(bcs->cs->driver->owner)) {
		FUNC0(DEBUG_ANY, "could not allocate channel %d",
			bcs->channel);
		FUNC2(&bcs->cs->lock, flags);
		return 0;
	}
	++bcs->use_count;
	bcs->busy = 1;
	FUNC0(DEBUG_ANY, "allocated channel %d", bcs->channel);
	FUNC2(&bcs->cs->lock, flags);
	return 1;
}