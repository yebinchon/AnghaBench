#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hw_perf_event {size_t idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {scalar_t__ n_active; int /*<<< orphan*/ ** events; int /*<<< orphan*/  active_mask; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore_box*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore_box*,struct perf_event*) ; 
 struct intel_uncore_box* FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore_box*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore_box*) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, int flags)
{
	struct intel_uncore_box *box = FUNC4(event);
	struct hw_perf_event *hwc = &event->hw;

	if (FUNC1(hwc->idx, box->active_mask)) {
		FUNC3(box, event);
		box->n_active--;
		box->events[hwc->idx] = NULL;
		FUNC0(hwc->state & PERF_HES_STOPPED);
		hwc->state |= PERF_HES_STOPPED;

		if (box->n_active == 0) {
			FUNC2(box);
			FUNC6(box);
		}
	}

	if ((flags & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {
		/*
		 * Drain the remaining delta count out of a event
		 * that we are disabling:
		 */
		FUNC5(box, event);
		hwc->state |= PERF_HES_UPTODATE;
	}
}