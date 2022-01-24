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
typedef  int u64 ;
struct TYPE_2__ {scalar_t__ idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; TYPE_1__ hw; } ;
struct intel_uncore_box {int dummy; } ;

/* Variables and functions */
 scalar_t__ UNCORE_PMC_IDX_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct intel_uncore_box*) ; 
 int FUNC4 (struct intel_uncore_box*) ; 
 int FUNC5 (struct intel_uncore_box*,struct perf_event*) ; 

__attribute__((used)) static void FUNC6(struct intel_uncore_box *box, struct perf_event *event)
{
	u64 prev_count, new_count, delta;
	int shift;

	if (event->hw.idx >= UNCORE_PMC_IDX_FIXED)
		shift = 64 - FUNC3(box);
	else
		shift = 64 - FUNC4(box);

	/* the hrtimer might modify the previous event value */
again:
	prev_count = FUNC1(&event->hw.prev_count);
	new_count = FUNC5(box, event);
	if (FUNC2(&event->hw.prev_count, new_count) != prev_count)
		goto again;

	delta = (new_count << shift) - (prev_count << shift);
	delta >>= shift;

	FUNC0(delta, &event->count);
}