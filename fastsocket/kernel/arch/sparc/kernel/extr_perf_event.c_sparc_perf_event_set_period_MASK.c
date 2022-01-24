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
typedef  int u64 ;
struct perf_event {int dummy; } ;
struct hw_perf_event {int sample_period; int last_period; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  period_left; } ;
typedef  int s64 ;

/* Variables and functions */
 int MAX_PERIOD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct perf_event *event,
				       struct hw_perf_event *hwc, int idx)
{
	s64 left = FUNC0(&hwc->period_left);
	s64 period = hwc->sample_period;
	int ret = 0;

	if (FUNC3(left <= -period)) {
		left = period;
		FUNC1(&hwc->period_left, left);
		hwc->last_period = period;
		ret = 1;
	}

	if (FUNC3(left <= 0)) {
		left += period;
		FUNC1(&hwc->period_left, left);
		hwc->last_period = period;
		ret = 1;
	}
	if (left > MAX_PERIOD)
		left = MAX_PERIOD;

	FUNC1(&hwc->prev_count, (u64)-left);

	FUNC4(idx, (u64)(-left) & 0xffffffff);

	FUNC2(event);

	return ret;
}