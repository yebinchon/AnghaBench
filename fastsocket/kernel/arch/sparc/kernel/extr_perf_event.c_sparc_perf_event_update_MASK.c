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
struct perf_event {int /*<<< orphan*/  count; } ;
struct hw_perf_event {int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static u64 FUNC5(struct perf_event *event,
				   struct hw_perf_event *hwc, int idx)
{
	int shift = 64 - 32;
	u64 prev_raw_count, new_raw_count;
	s64 delta;

again:
	prev_raw_count = FUNC2(&hwc->prev_count);
	new_raw_count = FUNC4(idx);

	if (FUNC1(&hwc->prev_count, prev_raw_count,
			     new_raw_count) != prev_raw_count)
		goto again;

	delta = (new_raw_count << shift) - (prev_raw_count << shift);
	delta >>= shift;

	FUNC0(delta, &event->count);
	FUNC3(delta, &hwc->period_left);

	return new_raw_count;
}