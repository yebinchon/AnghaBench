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
typedef  size_t u64 ;
struct perf_event_attr {int type; size_t config; int /*<<< orphan*/  exclude_user; int /*<<< orphan*/  exclude_kernel; int /*<<< orphan*/  exclude_hv; } ;
struct hw_perf_event {size_t config; int /*<<< orphan*/  config_base; } ;
struct perf_event {int /*<<< orphan*/  destroy; struct hw_perf_event hw; struct perf_event_attr attr; } ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 size_t PERF_CPUM_CF_MAX_CTR ; 
#define  PERF_TYPE_HARDWARE 129 
#define  PERF_TYPE_RAW 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 size_t* cpumf_generic_events_basic ; 
 size_t* cpumf_generic_events_user ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  hw_perf_event_destroy ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_events ; 
 int /*<<< orphan*/  pmc_reserve_mutex ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (struct hw_perf_event*) ; 
 int FUNC9 (struct hw_perf_event*) ; 
 int FUNC10 (struct hw_perf_event*) ; 

__attribute__((used)) static int FUNC11(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;
	struct hw_perf_event *hwc = &event->hw;
	int err;
	u64 ev;

	switch (attr->type) {
	case PERF_TYPE_RAW:
		/* Raw events are used to access counters directly,
		 * hence do not permit excludes */
		if (attr->exclude_kernel || attr->exclude_user ||
		    attr->exclude_hv)
			return -EOPNOTSUPP;
		ev = attr->config;
		break;

	case PERF_TYPE_HARDWARE:
		ev = attr->config;
		/* Count user space (problem-state) only */
		if (!attr->exclude_user && attr->exclude_kernel) {
			if (ev >= FUNC0(cpumf_generic_events_user))
				return -EOPNOTSUPP;
			ev = cpumf_generic_events_user[ev];

		/* No support for kernel space counters only */
		} else if (!attr->exclude_kernel && attr->exclude_user) {
			return -EOPNOTSUPP;

		/* Count user and kernel space */
		} else {
			if (ev >= FUNC0(cpumf_generic_events_basic))
				return -EOPNOTSUPP;
			ev = cpumf_generic_events_basic[ev];
		}
		break;

	default:
		return -ENOENT;
	}

	if (ev == -1)
		return -ENOENT;

	if (ev >= PERF_CPUM_CF_MAX_CTR)
		return -EINVAL;

	/* Use the hardware perf event structure to store the counter number
	 * in 'config' member and the counter set to which the counter belongs
	 * in the 'config_base'.  The counter set (config_base) is then used
	 * to enable/disable the counters.
	 */
	hwc->config = ev;
	hwc->config_base = FUNC4(ev);

	/* Validate the counter that is assigned to this event.
	 * Because the counter facility can use numerous counters at the
	 * same time without constraints, it is not necessary to explicity
	 * validate event groups (event->group_leader != event).
	 */
	err = FUNC10(hwc);
	if (err)
		return err;

	/* Initialize for using the CPU-measurement counter facility */
	if (!FUNC2(&num_events)) {
		FUNC5(&pmc_reserve_mutex);
		if (FUNC3(&num_events) == 0 && FUNC7())
			err = -EBUSY;
		else
			FUNC1(&num_events);
		FUNC6(&pmc_reserve_mutex);
	}
	event->destroy = hw_perf_event_destroy;

	/* Finally, validate version and authorization of the counter set */
	err = FUNC8(hwc);
	if (!err)
		err = FUNC9(hwc);

	return err;
}