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
struct TYPE_2__ {int state; int /*<<< orphan*/  period_left; int /*<<< orphan*/  idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {TYPE_1__ hw; int /*<<< orphan*/  count; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int PERF_HES_STOPPED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event)
{
	s64 val, delta, prev;

	if (event->hw.state & PERF_HES_STOPPED)
		return;

	if (!event->hw.idx)
		return;
	/*
	 * Performance monitor interrupts come even when interrupts
	 * are soft-disabled, as long as interrupts are hard-enabled.
	 * Therefore we treat them like NMIs.
	 */
	do {
		prev = FUNC4(&event->hw.prev_count);
		FUNC0();
		val = FUNC6(event->hw.idx);
		delta = FUNC1(prev, val);
		if (!delta)
			return;
	} while (FUNC3(&event->hw.prev_count, prev, val) != prev);

	FUNC2(delta, &event->count);
	FUNC5(delta, &event->hw.period_left);
}