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
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_IMR_INTERRUPT_STATUS_BASE ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned long long) ; 
 unsigned int FUNC5 () ; 

__attribute__((used)) static inline void FUNC6(void)
{
	unsigned int cpu = FUNC5();
	unsigned long long mask;

	/*
	 * Default...we've hit an IP[2] interrupt, which means we've got to
	 * check the 1250 interrupt registers to figure out what to do.  Need
	 * to detect which CPU we're on, now that smp_affinity is supported.
	 */
	mask = FUNC2(FUNC1(FUNC0(cpu,
				  R_IMR_INTERRUPT_STATUS_BASE)));
	if (mask)
		FUNC3(FUNC4(mask) - 1);
}