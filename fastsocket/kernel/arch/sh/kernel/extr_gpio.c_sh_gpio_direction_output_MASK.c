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
struct pinmux_info {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PINMUX_TYPE_OUTPUT ; 
 struct pinmux_info* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  gpio_lock ; 
 int FUNC1 (struct pinmux_info*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pinmux_info*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset,
				    int value)
{
	struct pinmux_info *gpioc = FUNC0(chip);
	unsigned long flags;
	int ret;

	FUNC2(gpioc, offset, value);
	FUNC3(&gpio_lock, flags);
	ret = FUNC1(gpioc, offset, PINMUX_TYPE_OUTPUT);
	FUNC4(&gpio_lock, flags);

	return ret;
}