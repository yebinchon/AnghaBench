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
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ R_BCM1480_IMR_INTERRUPT_STATUS_BASE_H ; 
 scalar_t__ R_BCM1480_IMR_INTERRUPT_STATUS_BASE_L ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned long long) ; 
 unsigned int FUNC5 () ; 

__attribute__((used)) static inline void FUNC6(void)
{
	unsigned long long mask_h, mask_l;
	unsigned int cpu = FUNC5();
	unsigned long base;

	/*
	 * Default...we've hit an IP[2] interrupt, which means we've got to
	 * check the 1480 interrupt registers to figure out what to do.  Need
	 * to detect which CPU we're on, now that smp_affinity is supported.
	 */
	base = FUNC0(cpu);
	mask_h = FUNC2(
		FUNC1(base + R_BCM1480_IMR_INTERRUPT_STATUS_BASE_H));
	mask_l = FUNC2(
		FUNC1(base + R_BCM1480_IMR_INTERRUPT_STATUS_BASE_L));

	if (mask_h) {
		if (mask_h ^ 1)
			FUNC3(FUNC4(mask_h) - 1);
		else if (mask_l)
			FUNC3(63 + FUNC4(mask_l));
	}
}