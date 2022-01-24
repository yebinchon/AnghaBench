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
struct unit_perf_monitor {int dummy; } ;
struct cpu_cost_stats {unsigned long long start; unsigned long long cost; int /*<<< orphan*/  overflow; int /*<<< orphan*/  call_times; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  g_up_monitor ; 
 struct cpu_cost_stats* FUNC1 (struct unit_perf_monitor*,char const*) ; 
 struct unit_perf_monitor* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(const char *name)
{
	struct unit_perf_monitor *monitor;
	unsigned long long end_time;

	FUNC0(end_time);	

	FUNC3();
	monitor = FUNC2(g_up_monitor);
	if (monitor) {
		struct cpu_cost_stats *cost_stats = FUNC1(monitor, name);
		/* Check the cost_stats->start to avoid there is one new monitor during start and end */
		if (cost_stats && cost_stats->start) {
			unsigned long long old_cost = cost_stats->cost;
			unsigned long long cost = end_time-cost_stats->start;
		
			cost_stats->cost += cost;
			cost_stats->start = 0;
			cost_stats->call_times++;

			if (cost_stats->cost < old_cost) {
				//overflow happens
				cost_stats->overflow++;
			}
		}
	}
	FUNC4();
}