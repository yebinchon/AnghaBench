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
 unsigned int MCFINTC0_ICR0 ; 
 unsigned int MCFINTC1_ICR0 ; 
 unsigned int MCFINT_VECBASE ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 

__attribute__((used)) static int FUNC1(unsigned int irq, unsigned int type)
{
	if (irq >= MCFINT_VECBASE) {
		if (irq < MCFINT_VECBASE + 64)
			FUNC0(5, MCFINTC0_ICR0 + irq - MCFINT_VECBASE);
		else if ((irq < MCFINT_VECBASE) && MCFINTC1_ICR0)
			FUNC0(5, MCFINTC1_ICR0 + irq - MCFINT_VECBASE - 64);
	}
	return 0;
}