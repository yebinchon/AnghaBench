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
struct TYPE_2__ {int state; int /*<<< orphan*/  idx; int /*<<< orphan*/  period_left; int /*<<< orphan*/  sample_period; } ;
struct perf_event {int /*<<< orphan*/  pmu; TYPE_1__ hw; } ;
typedef  int s64 ;

/* Variables and functions */
 int PERF_EF_RELOAD ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event, int ef_flags)
{
	unsigned long flags;
	s64 left;
	unsigned long val;

	if (!event->hw.idx || !event->hw.sample_period)
		return;

	if (!(event->hw.state & PERF_HES_STOPPED))
		return;

	if (ef_flags & PERF_EF_RELOAD)
		FUNC0(!(event->hw.state & PERF_HES_UPTODATE));

	FUNC3(flags);
	FUNC5(event->pmu);

	event->hw.state = 0;
	left = FUNC1(&event->hw.period_left);

	val = 0;
	if (left < 0x80000000L)
		val = 0x80000000L - left;

	FUNC7(event->hw.idx, val);

	FUNC4(event);
	FUNC6(event->pmu);
	FUNC2(flags);
}