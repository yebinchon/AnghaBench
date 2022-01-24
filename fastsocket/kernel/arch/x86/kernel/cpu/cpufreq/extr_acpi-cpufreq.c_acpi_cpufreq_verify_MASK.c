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
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;
struct acpi_cpufreq_data {int /*<<< orphan*/  freq_table; } ;

/* Variables and functions */
 int FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  drv_data ; 
 struct acpi_cpufreq_data* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy)
{
	struct acpi_cpufreq_data *data = FUNC2(drv_data, policy->cpu);

	FUNC1("acpi_cpufreq_verify\n");

	return FUNC0(policy, data->freq_table);
}