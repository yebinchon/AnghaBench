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
struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {scalar_t__ cpu; int /*<<< orphan*/  new; int /*<<< orphan*/  old; } ;
struct TYPE_3__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct cpufreq_policy*,TYPE_1__*,unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 TYPE_1__* g5_cpu_freqs ; 
 unsigned int g5_pmode_cur ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  g5_switch_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cpufreq_policy *policy,
	unsigned int target_freq, unsigned int relation)
{
	unsigned int newstate = 0;
	struct cpufreq_freqs freqs;
	int rc;

	if (FUNC0(policy, g5_cpu_freqs,
			target_freq, relation, &newstate))
		return -EINVAL;

	if (g5_pmode_cur == newstate)
		return 0;

	FUNC3(&g5_switch_mutex);

	freqs.old = g5_cpu_freqs[g5_pmode_cur].frequency;
	freqs.new = g5_cpu_freqs[newstate].frequency;
	freqs.cpu = 0;

	FUNC1(&freqs, CPUFREQ_PRECHANGE);
	rc = FUNC2(newstate);
	FUNC1(&freqs, CPUFREQ_POSTCHANGE);

	FUNC4(&g5_switch_mutex);

	return rc;
}