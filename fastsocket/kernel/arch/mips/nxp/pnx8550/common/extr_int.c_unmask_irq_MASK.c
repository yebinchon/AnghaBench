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
 unsigned int PNX8550_INT_CP0_MAX ; 
 unsigned int PNX8550_INT_CP0_MIN ; 
 unsigned int PNX8550_INT_GIC_MAX ; 
 unsigned int PNX8550_INT_GIC_MIN ; 
 unsigned int PNX8550_INT_TIMER_MAX ; 
 unsigned int PNX8550_INT_TIMER_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static inline void FUNC3(unsigned int irq_nr)
{
	if ((PNX8550_INT_CP0_MIN <= irq_nr) && (irq_nr <= PNX8550_INT_CP0_MAX)) {
		FUNC0(0, 1 << irq_nr);
	} else if ((PNX8550_INT_GIC_MIN <= irq_nr) &&
		(irq_nr <= PNX8550_INT_GIC_MAX)) {
		FUNC2(irq_nr - PNX8550_INT_GIC_MIN);
	} else if ((PNX8550_INT_TIMER_MIN <= irq_nr) &&
		(irq_nr <= PNX8550_INT_TIMER_MAX)) {
		FUNC0(0, 1 << 7);
	} else {
		FUNC1("mask_irq: irq %d doesn't exist!\n", irq_nr);
	}
}