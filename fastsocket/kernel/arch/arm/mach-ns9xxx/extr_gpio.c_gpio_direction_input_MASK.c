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
 int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gpio_lock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(unsigned gpio)
{
	if (FUNC2(FUNC3(gpio))) {
		int ret = -EINVAL;
		unsigned long flags;

		FUNC5(&gpio_lock, flags);
#if defined(CONFIG_PROCESSOR_NS9360)
		if (processor_is_ns9360())
			ret = __ns9360_gpio_configure(gpio, 0, 0, 3);
		else
#endif
			FUNC0();

		FUNC6(&gpio_lock, flags);

		return ret;

	} else
		return -EINVAL;
}