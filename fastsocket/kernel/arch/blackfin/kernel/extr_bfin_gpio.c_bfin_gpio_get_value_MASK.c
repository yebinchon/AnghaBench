#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int data; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__** gpio_array ; 
 size_t FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(unsigned gpio)
{
#ifdef CONFIG_BF54x
	return (1 & (gpio_array[gpio_bank(gpio)]->data >> gpio_sub_n(gpio)));
#else
	unsigned long flags;

	if (FUNC7(FUNC1(gpio))) {
		int ret;
		FUNC5(flags);
		FUNC6(gpio, 0);
		ret = FUNC0(gpio);
		FUNC6(gpio, 1);
		FUNC4(flags);
		return ret;
	} else
		return FUNC0(gpio);
#endif
}