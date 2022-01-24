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
 int /*<<< orphan*/  GPIO_USAGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC4(unsigned gpio)
{
#ifdef CONFIG_BF54x
	unsigned long flags;
#endif

	FUNC3(gpio, GPIO_USAGE);

#ifdef CONFIG_BF54x
	local_irq_save_hw(flags);
	__bfin_gpio_direction_input(gpio);
	local_irq_restore_hw(flags);
#endif
}