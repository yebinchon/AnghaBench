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
struct cpufreq_policy {size_t cpu; } ;
struct cpufreq_acpi_io {int /*<<< orphan*/  acpi_data; } ;

/* Variables and functions */
 struct cpufreq_acpi_io** acpi_io_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_acpi_io*) ; 

__attribute__((used)) static int
FUNC4 (
	struct cpufreq_policy   *policy)
{
	struct cpufreq_acpi_io *data = acpi_io_data[policy->cpu];

	FUNC2("acpi_cpufreq_cpu_exit\n");

	if (data) {
		FUNC1(policy->cpu);
		acpi_io_data[policy->cpu] = NULL;
		FUNC0(&data->acpi_data,
		                                      policy->cpu);
		FUNC3(data);
	}

	return (0);
}