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

/* Variables and functions */
 int /*<<< orphan*/  APIC_LDR ; 
 unsigned long APIC_LDR_MASK ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  x86_bios_cpu_apicid ; 

__attribute__((used)) static inline unsigned long FUNC3(int cpu)
{
	unsigned long val, id;

	val = FUNC1(APIC_LDR) & ~APIC_LDR_MASK;
	id = FUNC2(x86_bios_cpu_apicid, cpu);
	val |= FUNC0(id);

	return val;
}