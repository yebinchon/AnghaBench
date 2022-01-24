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
struct kobject {int dummy; } ;
struct freq_attr {int /*<<< orphan*/  (* show ) (struct cpufreq_policy*,char*) ;} ;
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 struct cpufreq_policy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*,char*) ; 
 struct freq_attr* FUNC4 (struct attribute*) ; 
 struct cpufreq_policy* FUNC5 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct kobject *kobj, struct attribute *attr, char *buf)
{
	struct cpufreq_policy *policy = FUNC5(kobj);
	struct freq_attr *fattr = FUNC4(attr);
	ssize_t ret = -EINVAL;
	policy = FUNC0(policy->cpu);
	if (!policy)
		goto no_policy;

	if (FUNC2(policy->cpu) < 0)
		goto fail;

	if (fattr->show)
		ret = fattr->show(policy, buf);
	else
		ret = -EIO;

	FUNC6(policy->cpu);
fail:
	FUNC1(policy);
no_policy:
	return ret;
}