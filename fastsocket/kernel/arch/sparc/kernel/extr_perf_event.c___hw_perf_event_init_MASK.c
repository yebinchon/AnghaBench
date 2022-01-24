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
typedef  int /*<<< orphan*/  u64 ;
struct perf_event_map {int pic_mask; int /*<<< orphan*/  encoding; } ;
struct perf_event_attr {scalar_t__ type; scalar_t__ config; int /*<<< orphan*/  exclude_hv; int /*<<< orphan*/  exclude_kernel; int /*<<< orphan*/  exclude_user; } ;
struct hw_perf_event {unsigned long event_base; int /*<<< orphan*/  config; int /*<<< orphan*/  idx; scalar_t__ sample_period; int /*<<< orphan*/  period_left; scalar_t__ last_period; int /*<<< orphan*/  config_base; } ;
struct perf_event {int /*<<< orphan*/  destroy; struct perf_event* group_leader; struct hw_perf_event hw; struct perf_event_attr attr; } ;
struct TYPE_2__ {scalar_t__ max_events; int /*<<< orphan*/  lower_shift; int /*<<< orphan*/  upper_shift; int /*<<< orphan*/  hv_bit; int /*<<< orphan*/  irq_bit; struct perf_event_map* (* event_map ) (scalar_t__) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct perf_event_map const*) ; 
 int MAX_HWEVENTS ; 
 scalar_t__ MAX_PERIOD ; 
 int /*<<< orphan*/  PCR_STRACE ; 
 int /*<<< orphan*/  PCR_UTRACE ; 
 scalar_t__ PERF_TYPE_HARDWARE ; 
 scalar_t__ PERF_TYPE_HW_CACHE ; 
 int /*<<< orphan*/  PIC_LOWER_INDEX ; 
 int PIC_UPPER ; 
 int /*<<< orphan*/  PIC_UPPER_INDEX ; 
 int FUNC1 (struct perf_event_map const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct perf_event**,int,int) ; 
 int FUNC5 (struct perf_event*,scalar_t__,struct perf_event**,unsigned long*) ; 
 int /*<<< orphan*/  hw_perf_event_destroy ; 
 int /*<<< orphan*/  nmi_active ; 
 unsigned long FUNC6 (struct perf_event_map const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ perf_max_events ; 
 scalar_t__ FUNC8 (unsigned long*,int) ; 
 struct perf_event_map* FUNC9 (scalar_t__) ; 
 TYPE_1__* sparc_pmu ; 
 struct perf_event_map* FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;
	struct perf_event *evts[MAX_HWEVENTS];
	struct hw_perf_event *hwc = &event->hw;
	unsigned long events[MAX_HWEVENTS];
	const struct perf_event_map *pmap;
	u64 enc;
	int n;

	if (FUNC3(&nmi_active) < 0)
		return -ENODEV;

	if (attr->type == PERF_TYPE_HARDWARE) {
		if (attr->config >= sparc_pmu->max_events)
			return -EINVAL;
		pmap = sparc_pmu->event_map(attr->config);
	} else if (attr->type == PERF_TYPE_HW_CACHE) {
		pmap = FUNC9(attr->config);
		if (FUNC0(pmap))
			return FUNC1(pmap);
	} else
		return -EOPNOTSUPP;

	/* We save the enable bits in the config_base.  So to
	 * turn off sampling just write 'config', and to enable
	 * things write 'config | config_base'.
	 */
	hwc->config_base = sparc_pmu->irq_bit;
	if (!attr->exclude_user)
		hwc->config_base |= PCR_UTRACE;
	if (!attr->exclude_kernel)
		hwc->config_base |= PCR_STRACE;
	if (!attr->exclude_hv)
		hwc->config_base |= sparc_pmu->hv_bit;

	hwc->event_base = FUNC6(pmap);

	enc = pmap->encoding;

	n = 0;
	if (event->group_leader != event) {
		n = FUNC5(event->group_leader,
				   perf_max_events - 1,
				   evts, events);
		if (n < 0)
			return -EINVAL;
	}
	events[n] = hwc->event_base;
	evts[n] = event;

	if (FUNC4(evts, n, 1))
		return -EINVAL;

	if (FUNC8(events, n + 1))
		return -EINVAL;

	/* Try to do all error checking before this point, as unwinding
	 * state after grabbing the PMC is difficult.
	 */
	FUNC7();
	event->destroy = hw_perf_event_destroy;

	if (!hwc->sample_period) {
		hwc->sample_period = MAX_PERIOD;
		hwc->last_period = hwc->sample_period;
		FUNC2(&hwc->period_left, hwc->sample_period);
	}

	if (pmap->pic_mask & PIC_UPPER) {
		hwc->idx = PIC_UPPER_INDEX;
		enc <<= sparc_pmu->upper_shift;
	} else {
		hwc->idx = PIC_LOWER_INDEX;
		enc <<= sparc_pmu->lower_shift;
	}

	hwc->config |= enc;
	return 0;
}