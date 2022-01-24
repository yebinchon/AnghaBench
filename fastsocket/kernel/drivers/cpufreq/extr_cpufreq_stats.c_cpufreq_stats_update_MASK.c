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
struct cpufreq_stats {size_t last_index; unsigned long long last_time; int /*<<< orphan*/ * time_in_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpufreq_stats_lock ; 
 int /*<<< orphan*/  cpufreq_stats_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,unsigned long long) ; 
 unsigned long long FUNC2 () ; 
 struct cpufreq_stats* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	struct cpufreq_stats *stat;
	unsigned long long cur_time;

	cur_time = FUNC2();
	FUNC4(&cpufreq_stats_lock);
	stat = FUNC3(cpufreq_stats_table, cpu);
	if (stat->time_in_state)
		stat->time_in_state[stat->last_index] =
			FUNC0(stat->time_in_state[stat->last_index],
				      FUNC1(cur_time, stat->last_time));
	stat->last_time = cur_time;
	FUNC5(&cpufreq_stats_lock);
	return 0;
}