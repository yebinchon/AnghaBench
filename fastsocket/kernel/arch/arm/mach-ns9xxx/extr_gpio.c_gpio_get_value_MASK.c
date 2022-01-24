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
 int EINVAL ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(unsigned gpio)
{
#if defined(CONFIG_PROCESSOR_NS9360)
	if (processor_is_ns9360())
		return ns9360_gpio_get_value(gpio);
	else
#endif
	{
		FUNC0();
		return -EINVAL;
	}
}