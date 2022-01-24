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
 scalar_t__ CPU_VR4133 ; 
 int EINVAL ; 
 unsigned char INTASSIGN_MAX ; 
 unsigned int SYSINT1_IRQ_BASE ; 
 unsigned int SYSINT1_IRQ_LAST ; 
 unsigned int SYSINT2_IRQ_BASE ; 
 unsigned int SYSINT2_IRQ_LAST ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (unsigned int,unsigned char) ; 
 int FUNC2 (unsigned int,unsigned char) ; 

int FUNC3(unsigned int irq, unsigned char intassign)
{
	int retval = -EINVAL;

	if (FUNC0() != CPU_VR4133)
		return -EINVAL;

	if (intassign > INTASSIGN_MAX)
		return -EINVAL;

	if (irq >= SYSINT1_IRQ_BASE && irq <= SYSINT1_IRQ_LAST)
		retval = FUNC1(irq, intassign);
	else if (irq >= SYSINT2_IRQ_BASE && irq <= SYSINT2_IRQ_LAST)
		retval = FUNC2(irq, intassign);

	return retval;
}