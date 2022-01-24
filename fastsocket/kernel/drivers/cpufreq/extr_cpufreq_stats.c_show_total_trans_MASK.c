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
struct cpufreq_stats {int total_trans; int /*<<< orphan*/  cpu; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  cpufreq_stats_table ; 
 struct cpufreq_stats* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct cpufreq_policy *policy, char *buf)
{
	struct cpufreq_stats *stat = FUNC0(cpufreq_stats_table, policy->cpu);
	if (!stat)
		return 0;
	return FUNC1(buf, "%d\n",
			FUNC0(cpufreq_stats_table, stat->cpu)->total_trans);
}