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
 int GPIO_IN ; 
 int GPIO_IRQ_falling_edge ; 
 int GPIO_IRQ_level_high ; 
 int GPIO_IRQ_level_low ; 
 int GPIO_IRQ_rising_edge ; 
 int GPIO_OUT ; 
 int /*<<< orphan*/  IXP2000_GPIO_PDCR ; 
 int /*<<< orphan*/  IXP2000_GPIO_PDSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(int line, int direction)
{
	unsigned long flags;

	FUNC2(flags);
	if (direction == GPIO_OUT) {
		/* if it's an output, it ain't an interrupt anymore */
		GPIO_IRQ_falling_edge &= ~(1 << line);
		GPIO_IRQ_rising_edge &= ~(1 << line);
		GPIO_IRQ_level_low &= ~(1 << line);
		GPIO_IRQ_level_high &= ~(1 << line);
		FUNC3();

		FUNC0(IXP2000_GPIO_PDSR, 1 << line);
	} else if (direction == GPIO_IN) {
		FUNC0(IXP2000_GPIO_PDCR, 1 << line);
	}
	FUNC1(flags);
}