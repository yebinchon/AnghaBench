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
struct cpufreq_acpi_io {int dummy; } ;

/* Variables and functions */
 struct cpufreq_acpi_io** acpi_io_data ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (struct cpufreq_acpi_io*,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC2 (
	unsigned int		cpu)
{
	struct cpufreq_acpi_io *data = acpi_io_data[cpu];

	FUNC0("acpi_cpufreq_get\n");

	return FUNC1(data, cpu);
}