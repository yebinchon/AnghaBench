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
struct cpu_cost_stats {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_up_monitor ; 
 struct cpu_cost_stats* FUNC1 (struct unit_perf_monitor*,char const*) ; 
 struct unit_perf_monitor* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(const char *name)
{
	struct unit_perf_monitor *monitor;

	FUNC3();
	monitor = FUNC2(g_up_monitor);
	if (monitor) {
		struct cpu_cost_stats *cost_stats = FUNC1(monitor, name);
		
		if (cost_stats) {
			FUNC0(cost_stats->start);
		}
	}
	FUNC4();
}