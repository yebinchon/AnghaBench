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
struct cardstate {int channels; int /*<<< orphan*/  lock; TYPE_1__* bcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct cardstate *cs)
{
	unsigned long flags;
	int i;

	FUNC0(DEBUG_ANY, "blocking all channels");
	FUNC1(&cs->lock, flags);
	for (i = 0; i < cs->channels; ++i)
		++cs->bcs[i].use_count;
	FUNC2(&cs->lock, flags);
}