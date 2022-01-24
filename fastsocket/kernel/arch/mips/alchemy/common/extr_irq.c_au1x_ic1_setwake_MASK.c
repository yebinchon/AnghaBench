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
 unsigned int AU1000_GPIO_0 ; 
 unsigned int AU1000_GPIO_7 ; 
 unsigned int AU1000_INTC1_INT_BASE ; 
 int EINVAL ; 
 int /*<<< orphan*/  SYS_WAKEMSK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(unsigned int irq, unsigned int on)
{
	unsigned int bit = irq - AU1000_INTC1_INT_BASE;
	unsigned long wakemsk, flags;

	/* only GPIO 0-7 can act as wakeup source: */
	if ((irq < AU1000_GPIO_0) || (irq > AU1000_GPIO_7))
		return -EINVAL;

	FUNC4(flags);
	wakemsk = FUNC0(SYS_WAKEMSK);
	if (on)
		wakemsk |= 1 << bit;
	else
		wakemsk &= ~(1 << bit);
	FUNC2(wakemsk, SYS_WAKEMSK);
	FUNC1();
	FUNC3(flags);

	return 0;
}