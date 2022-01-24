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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_cpufreq_data {int cpu_feature; } ;

/* Variables and functions */
#define  SYSTEM_INTEL_MSR_CAPABLE 129 
#define  SYSTEM_IO_CAPABLE 128 
 int FUNC0 (int /*<<< orphan*/ ,struct acpi_cpufreq_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct acpi_cpufreq_data*) ; 

__attribute__((used)) static unsigned FUNC2(u32 val, struct acpi_cpufreq_data *data)
{
	switch (data->cpu_feature) {
	case SYSTEM_INTEL_MSR_CAPABLE:
		return FUNC1(val, data);
	case SYSTEM_IO_CAPABLE:
		return FUNC0(val, data);
	default:
		return 0;
	}
}