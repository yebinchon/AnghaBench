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
struct powernow_k8_data {int /*<<< orphan*/  powernow_table; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 struct powernow_k8_data* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powernow_data ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *pol)
{
	struct powernow_k8_data *data = FUNC1(powernow_data, pol->cpu);

	if (!data)
		return -EINVAL;

	return FUNC0(pol, data->powernow_table);
}