#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct icst525_vco {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_freq; int /*<<< orphan*/  min_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; void* min; void* max; } ;

/* Variables and functions */
 int /*<<< orphan*/  cclk_params ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,struct icst525_vco) ; 
 struct icst525_vco FUNC2 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy)
{
	struct icst525_vco vco;

	FUNC0(policy, 
				     policy->cpuinfo.min_freq, 
				     policy->cpuinfo.max_freq);

	vco = FUNC2(&cclk_params, policy->max);
	policy->max = FUNC1(&cclk_params, vco);

	vco = FUNC2(&cclk_params, policy->min);
	policy->min = FUNC1(&cclk_params, vco);

	FUNC0(policy, 
				     policy->cpuinfo.min_freq, 
				     policy->cpuinfo.max_freq);

	return 0;
}