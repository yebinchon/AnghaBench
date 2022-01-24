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
typedef  int /*<<< orphan*/  u8 ;
struct cpufreq_policy {unsigned int min; unsigned int max; scalar_t__ cpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int max_duration ; 
 unsigned int stock_freq ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy,
			     unsigned int target_freq,
			     unsigned int relation)
{
	u8 tmp1, tmp2;
	unsigned int tmp_freq;

	if (!stock_freq || !policy)
		return -EINVAL;

	policy->cpu = 0;

	tmp_freq = FUNC1(target_freq, &tmp1, &tmp2);
	while (tmp_freq < policy->min) {
		tmp_freq += stock_freq / max_duration;
		tmp_freq = FUNC1(tmp_freq, &tmp1, &tmp2);
	}
	while (tmp_freq > policy->max) {
		tmp_freq -= stock_freq / max_duration;
		tmp_freq = FUNC1(tmp_freq, &tmp1, &tmp2);
	}

	FUNC0(tmp_freq);

	return 0;
}