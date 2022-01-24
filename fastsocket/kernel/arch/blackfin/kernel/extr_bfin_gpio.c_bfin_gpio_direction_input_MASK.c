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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 size_t FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  inen ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int* reserved_gpio_map ; 

int FUNC7(unsigned gpio)
{
	unsigned long flags;

	if (!(reserved_gpio_map[FUNC2(gpio)] & FUNC3(gpio))) {
		FUNC4(gpio);
		return -EINVAL;
	}

	FUNC6(flags);
	FUNC1(gpio);
	FUNC0(inen);
	FUNC5(flags);

	return 0;
}