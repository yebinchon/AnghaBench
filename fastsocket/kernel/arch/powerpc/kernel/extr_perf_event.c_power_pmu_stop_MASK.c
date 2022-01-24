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
struct TYPE_2__ {int state; int /*<<< orphan*/  idx; int /*<<< orphan*/  sample_period; } ;
struct perf_event {int /*<<< orphan*/  pmu; TYPE_1__ hw; } ;

/* Variables and functions */
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, int ef_flags)
{
	unsigned long flags;

	if (!event->hw.idx || !event->hw.sample_period)
		return;

	if (event->hw.state & PERF_HES_STOPPED)
		return;

	FUNC1(flags);
	FUNC3(event->pmu);

	FUNC5(event);
	event->hw.state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
	FUNC6(event->hw.idx, 0);

	FUNC2(event);
	FUNC4(event->pmu);
	FUNC0(flags);
}