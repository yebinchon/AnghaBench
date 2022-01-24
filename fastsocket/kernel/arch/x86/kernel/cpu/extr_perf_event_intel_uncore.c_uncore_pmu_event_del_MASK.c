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
struct TYPE_2__ {int idx; unsigned long long last_tag; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {int n_events; struct perf_event** event_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 struct intel_uncore_box* FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore_box*,struct perf_event*) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int flags)
{
	struct intel_uncore_box *box = FUNC0(event);
	int i;

	FUNC1(event, PERF_EF_UPDATE);

	for (i = 0; i < box->n_events; i++) {
		if (event == box->event_list[i]) {
			FUNC2(box, event);

			while (++i < box->n_events)
				box->event_list[i - 1] = box->event_list[i];

			--box->n_events;
			break;
		}
	}

	event->hw.idx = -1;
	event->hw.last_tag = ~0ULL;
}