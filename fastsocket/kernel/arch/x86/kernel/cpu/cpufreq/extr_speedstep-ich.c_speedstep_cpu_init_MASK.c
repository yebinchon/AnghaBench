#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct get_freqs {int ret; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {unsigned int cur; int /*<<< orphan*/  cpu; int /*<<< orphan*/  cpus; } ;
struct TYPE_4__ {unsigned int frequency; } ;

/* Variables and functions */
 int EIO ; 
 size_t SPEEDSTEP_LOW ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpufreq_policy*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  get_freqs_on_cpu ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ,struct get_freqs*,int) ; 
 TYPE_1__* speedstep_freqs ; 
 unsigned int FUNC7 (unsigned int) ; 

__attribute__((used)) static int FUNC8(struct cpufreq_policy *policy)
{
	int result;
	unsigned int policy_cpu, speed;
	struct get_freqs gf;

	/* only run on CPU to be set, or on its sibling */
#ifdef CONFIG_SMP
	cpumask_copy(policy->cpus, cpu_sibling_mask(policy->cpu));
#endif
	policy_cpu = FUNC3(policy->cpus, cpu_online_mask);

	/* detect low and high frequency and transition latency */
	gf.policy = policy;
	FUNC6(policy_cpu, get_freqs_on_cpu, &gf, 1);
	if (gf.ret)
		return gf.ret;

	/* get current speed setting */
	speed = FUNC7(policy_cpu);
	if (!speed)
		return -EIO;

	FUNC5("currently at %s speed setting - %i MHz\n",
		(speed == speedstep_freqs[SPEEDSTEP_LOW].frequency)
		? "low" : "high",
		(speed / 1000));

	/* cpuinfo and default policy values */
	policy->cur = speed;

	result = FUNC1(policy, speedstep_freqs);
	if (result)
		return result;

	FUNC2(speedstep_freqs, policy->cpu);

	return 0;
}