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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(unsigned gpio, int value)
{
	unsigned long flags;
	FUNC3(&gpio_lock, flags);
#if defined(CONFIG_PROCESSOR_NS9360)
	if (processor_is_ns9360())
		ns9360_gpio_set_value(gpio, value);
	else
#endif
		FUNC0();

	FUNC4(&gpio_lock, flags);
}