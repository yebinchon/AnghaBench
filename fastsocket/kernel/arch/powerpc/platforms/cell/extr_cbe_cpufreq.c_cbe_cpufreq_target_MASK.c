#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_policy {int /*<<< orphan*/  cpu; int /*<<< orphan*/  cur; } ;
struct cpufreq_freqs {int /*<<< orphan*/  cpu; int /*<<< orphan*/  new; int /*<<< orphan*/  old; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 TYPE_1__* cbe_freqs ; 
 int /*<<< orphan*/  cbe_switch_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,TYPE_1__*,unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct cpufreq_policy *policy,
			      unsigned int target_freq,
			      unsigned int relation)
{
	int rc;
	struct cpufreq_freqs freqs;
	unsigned int cbe_pmode_new;

	FUNC0(policy,
				       cbe_freqs,
				       target_freq,
				       relation,
				       &cbe_pmode_new);

	freqs.old = policy->cur;
	freqs.new = cbe_freqs[cbe_pmode_new].frequency;
	freqs.cpu = policy->cpu;

	FUNC2(&cbe_switch_mutex);
	FUNC1(&freqs, CPUFREQ_PRECHANGE);

	FUNC4("setting frequency for cpu %d to %d kHz, " \
		 "1/%d of max frequency\n",
		 policy->cpu,
		 cbe_freqs[cbe_pmode_new].frequency,
		 cbe_freqs[cbe_pmode_new].index);

	rc = FUNC5(policy->cpu, cbe_pmode_new);

	FUNC1(&freqs, CPUFREQ_POSTCHANGE);
	FUNC3(&cbe_switch_mutex);

	return rc;
}