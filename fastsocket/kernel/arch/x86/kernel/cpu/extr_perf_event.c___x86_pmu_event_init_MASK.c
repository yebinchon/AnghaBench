#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* idx; } ;
struct TYPE_5__ {void* idx; } ;
struct TYPE_7__ {int idx; int last_cpu; unsigned long long last_tag; TYPE_2__ branch_reg; TYPE_1__ extra_reg; } ;
struct perf_event {TYPE_3__ hw; int /*<<< orphan*/  destroy; } ;
struct TYPE_8__ {int (* hw_config ) (struct perf_event*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 void* EXTRA_REG_NONE ; 
 int /*<<< orphan*/  active_events ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw_perf_event_destroy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmc_reserve_mutex ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct perf_event*) ; 
 TYPE_4__ x86_pmu ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct perf_event *event)
{
	int err;

	if (!FUNC8())
		return -ENODEV;

	err = 0;
	if (!FUNC1(&active_events)) {
		FUNC3(&pmc_reserve_mutex);
		if (FUNC2(&active_events) == 0) {
			if (!FUNC6())
				err = -EBUSY;
			else
				FUNC5();
		}
		if (!err)
			FUNC0(&active_events);
		FUNC4(&pmc_reserve_mutex);
	}
	if (err)
		return err;

	event->destroy = hw_perf_event_destroy;

	event->hw.idx = -1;
	event->hw.last_cpu = -1;
	event->hw.last_tag = ~0ULL;

	/* mark unused */
	event->hw.extra_reg.idx = EXTRA_REG_NONE;

	/* mark not used */
	event->hw.extra_reg.idx = EXTRA_REG_NONE;
	event->hw.branch_reg.idx = EXTRA_REG_NONE;

	return x86_pmu.hw_config(event);
}