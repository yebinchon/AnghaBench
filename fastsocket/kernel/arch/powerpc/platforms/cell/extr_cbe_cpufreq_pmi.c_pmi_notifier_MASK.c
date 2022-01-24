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
typedef  size_t u8 ;
struct notifier_block {int dummy; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;
struct cpufreq_frequency_table {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 unsigned long CPUFREQ_START ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct cpufreq_frequency_table* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t* pmi_slow_mode_limit ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,size_t) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb,
				       unsigned long event, void *data)
{
	struct cpufreq_policy *policy = data;
	struct cpufreq_frequency_table *cbe_freqs;
	u8 node;

	/* Should this really be called for CPUFREQ_ADJUST, CPUFREQ_INCOMPATIBLE
	 * and CPUFREQ_NOTIFY policy events?)
	 */
	if (event == CPUFREQ_START)
		return 0;

	cbe_freqs = FUNC1(policy->cpu);
	node = FUNC0(policy->cpu);

	FUNC3("got notified, event=%lu, node=%u\n", event, node);

	if (pmi_slow_mode_limit[node] != 0) {
		FUNC3("limiting node %d to slow mode %d\n",
			 node, pmi_slow_mode_limit[node]);

		FUNC2(policy, 0,

			cbe_freqs[pmi_slow_mode_limit[node]].frequency);
	}

	return 0;
}