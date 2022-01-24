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
struct notifier_block {int dummy; } ;
struct cpufreq_stats {int last_index; int max_state; int /*<<< orphan*/  total_trans; int /*<<< orphan*/ * trans_table; } ;
struct cpufreq_freqs {int /*<<< orphan*/  cpu; int /*<<< orphan*/  new; } ;

/* Variables and functions */
 unsigned long CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  cpufreq_stats_lock ; 
 int /*<<< orphan*/  cpufreq_stats_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpufreq_stats*,int /*<<< orphan*/ ) ; 
 struct cpufreq_stats* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *nb,
		unsigned long val, void *data)
{
	struct cpufreq_freqs *freq = data;
	struct cpufreq_stats *stat;
	int old_index, new_index;

	if (val != CPUFREQ_POSTCHANGE)
		return 0;

	stat = FUNC2(cpufreq_stats_table, freq->cpu);
	if (!stat)
		return 0;

	old_index = stat->last_index;
	new_index = FUNC1(stat, freq->new);

	FUNC0(freq->cpu);
	if (old_index == new_index)
		return 0;

	if (old_index == -1 || new_index == -1)
		return 0;

	FUNC3(&cpufreq_stats_lock);
	stat->last_index = new_index;
#ifdef CONFIG_CPU_FREQ_STAT_DETAILS
	stat->trans_table[old_index * stat->max_state + new_index]++;
#endif
	stat->total_trans++;
	FUNC4(&cpufreq_stats_lock);
	return 0;
}