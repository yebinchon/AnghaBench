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
struct cpumask {int dummy; } ;
struct acpi_cpufreq_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,struct acpi_cpufreq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned int FUNC3(const struct cpumask *mask, unsigned int freq,
				struct acpi_cpufreq_data *data)
{
	unsigned int cur_freq;
	unsigned int i;

	for (i = 0; i < 100; i++) {
		cur_freq = FUNC0(FUNC1(mask), data);
		if (cur_freq == freq)
			return 1;
		FUNC2(10);
	}
	return 0;
}