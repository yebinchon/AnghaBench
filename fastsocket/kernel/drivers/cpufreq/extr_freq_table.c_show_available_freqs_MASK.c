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
struct cpufreq_policy {unsigned int cpu; } ;
struct cpufreq_frequency_table {scalar_t__ frequency; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ CPUFREQ_ENTRY_INVALID ; 
 scalar_t__ CPUFREQ_TABLE_END ; 
 size_t ENODEV ; 
 struct cpufreq_frequency_table* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  show_table ; 
 scalar_t__ FUNC1 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC2(struct cpufreq_policy *policy, char *buf)
{
	unsigned int i = 0;
	unsigned int cpu = policy->cpu;
	ssize_t count = 0;
	struct cpufreq_frequency_table *table;

	if (!FUNC0(show_table, cpu))
		return -ENODEV;

	table = FUNC0(show_table, cpu);

	for (i = 0; (table[i].frequency != CPUFREQ_TABLE_END); i++) {
		if (table[i].frequency == CPUFREQ_ENTRY_INVALID)
			continue;
		count += FUNC1(&buf[count], "%d ", table[i].frequency);
	}
	count += FUNC1(&buf[count], "\n");

	return count;

}