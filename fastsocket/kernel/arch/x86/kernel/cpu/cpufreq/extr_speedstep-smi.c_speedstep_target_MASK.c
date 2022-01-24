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
struct cpufreq_freqs {scalar_t__ old; scalar_t__ new; scalar_t__ cpu; } ;
struct TYPE_3__ {scalar_t__ frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct cpufreq_policy*,TYPE_1__*,unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 TYPE_1__* speedstep_freqs ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct cpufreq_policy *policy,
			unsigned int target_freq, unsigned int relation)
{
	unsigned int newstate = 0;
	struct cpufreq_freqs freqs;

	if (FUNC0(policy, &speedstep_freqs[0],
				target_freq, relation, &newstate))
		return -EINVAL;

	freqs.old = speedstep_freqs[FUNC2()].frequency;
	freqs.new = speedstep_freqs[newstate].frequency;
	freqs.cpu = 0; /* speedstep.c is UP only driver */

	if (freqs.old == freqs.new)
		return 0;

	FUNC1(&freqs, CPUFREQ_PRECHANGE);
	FUNC3(newstate);
	FUNC1(&freqs, CPUFREQ_POSTCHANGE);

	return 0;
}