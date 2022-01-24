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
 int FUNC1 (unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(unsigned gpio, int value)
{
	if (FUNC3(FUNC4(gpio))) {
		int ret = -EINVAL;
		unsigned long flags;

		FUNC2(gpio, value);

		FUNC6(&gpio_lock, flags);
#if defined(CONFIG_PROCESSOR_NS9360)
		if (processor_is_ns9360())
			ret = __ns9360_gpio_configure(gpio, 1, 0, 3);
		else
#endif
			FUNC0();

		FUNC7(&gpio_lock, flags);

		return ret;
	} else
		return -EINVAL;
}