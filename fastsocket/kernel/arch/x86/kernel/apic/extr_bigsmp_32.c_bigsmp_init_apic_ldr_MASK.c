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
 int /*<<< orphan*/  APIC_DFR ; 
 unsigned long APIC_DFR_FLAT ; 
 int /*<<< orphan*/  APIC_LDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long val;
	int cpu = FUNC2();

	FUNC0(APIC_DFR, APIC_DFR_FLAT);
	val = FUNC1(cpu);
	FUNC0(APIC_LDR, val);
}