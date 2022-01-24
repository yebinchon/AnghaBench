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

/* Variables and functions */
 unsigned int BAD_APICID ; 
 int FUNC0 (struct cpumask const*) ; 
 unsigned int nr_cpu_ids ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  x86_cpu_to_apicid ; 

__attribute__((used)) static unsigned int FUNC2(const struct cpumask *cpumask)
{
	int cpu;

	/*
	 * We're using fixed IRQ delivery, can only return one phys APIC ID.
	 * May as well be the first.
	 */
	cpu = FUNC0(cpumask);
	if ((unsigned)cpu < nr_cpu_ids)
		return FUNC1(x86_cpu_to_apicid, cpu);
	else
		return BAD_APICID;
}