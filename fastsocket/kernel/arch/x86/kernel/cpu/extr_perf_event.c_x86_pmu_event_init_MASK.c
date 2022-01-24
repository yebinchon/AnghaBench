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
struct pmu {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct perf_event {int /*<<< orphan*/  (* destroy ) (struct perf_event*) ;struct pmu* pmu; struct perf_event* group_leader; TYPE_1__ attr; } ;

/* Variables and functions */
 int ENOENT ; 
#define  PERF_TYPE_HARDWARE 130 
#define  PERF_TYPE_HW_CACHE 129 
#define  PERF_TYPE_RAW 128 
 int FUNC0 (struct perf_event*) ; 
 struct pmu pmu ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int FUNC2 (struct perf_event*) ; 
 int FUNC3 (struct perf_event*) ; 

__attribute__((used)) static int FUNC4(struct perf_event *event)
{
	struct pmu *tmp;
	int err;

	switch (event->attr.type) {
	case PERF_TYPE_RAW:
	case PERF_TYPE_HARDWARE:
	case PERF_TYPE_HW_CACHE:
		break;

	default:
		return -ENOENT;
	}

	err = FUNC0(event);
	if (!err) {
		/*
		 * we temporarily connect event to its pmu
		 * such that validate_group() can classify
		 * it as an x86 event using is_x86_event()
		 */
		tmp = event->pmu;
		event->pmu = &pmu;

		if (event->group_leader != event)
			err = FUNC3(event);
		else
			err = FUNC2(event);

		event->pmu = tmp;
	}
	if (err) {
		if (event->destroy)
			event->destroy(event);
	}

	return err;
}