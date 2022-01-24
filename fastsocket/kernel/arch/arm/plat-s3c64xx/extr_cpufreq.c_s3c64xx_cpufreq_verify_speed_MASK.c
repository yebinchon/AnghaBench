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
struct cpufreq_policy {scalar_t__ cpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c64xx_freq_table ; 

__attribute__((used)) static int FUNC1(struct cpufreq_policy *policy)
{
	if (policy->cpu != 0)
		return -EINVAL;

	return FUNC0(policy, s3c64xx_freq_table);
}