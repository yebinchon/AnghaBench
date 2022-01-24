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
struct cpufreq_acpi_io {int /*<<< orphan*/  freq_table; } ;

/* Variables and functions */
 struct cpufreq_acpi_io** acpi_io_data ; 
 unsigned int FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2 (
	struct cpufreq_policy   *policy)
{
	unsigned int result = 0;
	struct cpufreq_acpi_io *data = acpi_io_data[policy->cpu];

	FUNC1("acpi_cpufreq_verify\n");

	result = FUNC0(policy,
			data->freq_table);

	return (result);
}