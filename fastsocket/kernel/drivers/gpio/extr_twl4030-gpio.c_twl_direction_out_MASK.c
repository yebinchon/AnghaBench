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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int TWL4030_GPIO_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset, int value)
{
	if (offset < TWL4030_GPIO_MAX) {
		FUNC1(offset, value);
		return FUNC2(offset, 0);
	} else {
		FUNC0(offset - TWL4030_GPIO_MAX, value);
		return 0;
	}
}