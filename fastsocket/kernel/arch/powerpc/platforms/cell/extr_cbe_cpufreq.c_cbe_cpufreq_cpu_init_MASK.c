#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int transition_latency; } ;
struct cpufreq_policy {int cpu; int cur; int /*<<< orphan*/  cpus; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {int frequency; int index; } ;

/* Variables and functions */
 int CPUFREQ_TABLE_END ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int) ; 
 TYPE_2__* cbe_freqs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  cpu_sibling_map ; 
 int FUNC3 (struct cpufreq_policy*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC6 (int,int /*<<< orphan*/ *) ; 
 int* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct cpufreq_policy *policy)
{
	const u32 *max_freqp;
	u32 max_freq;
	int i, cur_pmode;
	struct device_node *cpu;

	cpu = FUNC6(policy->cpu, NULL);

	if (!cpu)
		return -ENODEV;

	FUNC10("init cpufreq on CPU %d\n", policy->cpu);

	/*
	 * Let's check we can actually get to the CELL regs
	 */
	if (!FUNC2(policy->cpu) ||
	    !FUNC1(policy->cpu)) {
		FUNC11("invalid CBE regs pointers for cpufreq\n");
		return -EINVAL;
	}

	max_freqp = FUNC7(cpu, "clock-frequency", NULL);

	FUNC8(cpu);

	if (!max_freqp)
		return -EINVAL;

	/* we need the freq in kHz */
	max_freq = *max_freqp / 1000;

	FUNC10("max clock-frequency is at %u kHz\n", max_freq);
	FUNC10("initializing frequency table\n");

	/* initialize frequency table */
	for (i=0; cbe_freqs[i].frequency!=CPUFREQ_TABLE_END; i++) {
		cbe_freqs[i].frequency = max_freq / cbe_freqs[i].index;
		FUNC10("%d: %d\n", i, cbe_freqs[i].frequency);
	}

	/* if DEBUG is enabled set_pmode() measures the latency
	 * of a transition */
	policy->cpuinfo.transition_latency = 25000;

	cur_pmode = FUNC0(policy->cpu);
	FUNC10("current pmode is at %d\n",cur_pmode);

	policy->cur = cbe_freqs[cur_pmode].frequency;

#ifdef CONFIG_SMP
	cpumask_copy(policy->cpus, &per_cpu(cpu_sibling_map, policy->cpu));
#endif

	FUNC4(cbe_freqs, policy->cpu);

	/* this ensures that policy->cpuinfo_min
	 * and policy->cpuinfo_max are set correctly */
	return FUNC3(policy, cbe_freqs);
}