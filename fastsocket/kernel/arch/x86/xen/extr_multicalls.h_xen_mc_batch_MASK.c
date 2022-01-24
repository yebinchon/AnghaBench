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
typedef  unsigned long __get_cpu_var ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 

__attribute__((used)) static inline void FUNC1(void)
{
	unsigned long flags;
	/* need to disable interrupts until this entry is complete */
	FUNC0(flags);
	__get_cpu_var(xen_mc_irq_flags) = flags;
}