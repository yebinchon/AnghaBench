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
struct bc_state {TYPE_2__* cs; int /*<<< orphan*/  channel; scalar_t__ busy; int /*<<< orphan*/  use_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct bc_state *bcs)
{
	unsigned long flags;

	FUNC2(&bcs->cs->lock, flags);
	if (!bcs->busy) {
		FUNC0(DEBUG_ANY, "could not free channel %d", bcs->channel);
		FUNC3(&bcs->cs->lock, flags);
		return;
	}
	--bcs->use_count;
	bcs->busy = 0;
	FUNC1(bcs->cs->driver->owner);
	FUNC0(DEBUG_ANY, "freed channel %d", bcs->channel);
	FUNC3(&bcs->cs->lock, flags);
}