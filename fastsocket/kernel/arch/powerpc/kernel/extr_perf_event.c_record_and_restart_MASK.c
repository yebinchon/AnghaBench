#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {scalar_t__ period; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int sample_type; } ;
struct TYPE_3__ {scalar_t__ sample_period; int state; scalar_t__ last_period; int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  idx; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; int /*<<< orphan*/  count; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int PERF_HES_STOPPED ; 
 int PERF_SAMPLE_ADDR ; 
 scalar_t__ FUNC0 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_sample_data*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct perf_event *event, unsigned long val,
			       struct pt_regs *regs)
{
	u64 period = event->hw.sample_period;
	s64 prev, delta, left;
	int record = 0;

	if (event->hw.state & PERF_HES_STOPPED) {
		FUNC10(event->hw.idx, 0);
		return;
	}

	/* we don't have to worry about interrupts here */
	prev = FUNC2(&event->hw.prev_count);
	delta = FUNC0(prev, val);
	FUNC1(delta, &event->count);

	/*
	 * See if the total period for this event has expired,
	 * and update for the next period.
	 */
	val = 0;
	left = FUNC2(&event->hw.period_left) - delta;
	if (delta == 0)
		left++;
	if (period) {
		if (left <= 0) {
			left += period;
			if (left <= 0)
				left = period;
			record = FUNC9(regs);
			event->hw.last_period = event->hw.sample_period;
		}
		if (left < 0x80000000LL)
			val = 0x80000000LL - left;
	}

	FUNC10(event->hw.idx, val);
	FUNC3(&event->hw.prev_count, val);
	FUNC3(&event->hw.period_left, left);
	FUNC5(event);

	/*
	 * Finally record data if requested.
	 */
	if (record) {
		struct perf_sample_data data;

		FUNC7(&data, ~0ULL);
		data.period = event->hw.last_period;

		if (event->attr.sample_type & PERF_SAMPLE_ADDR)
			FUNC6(regs, &data.addr);

		if (FUNC4(event, &data, regs))
			FUNC8(event, 0);
	}
}