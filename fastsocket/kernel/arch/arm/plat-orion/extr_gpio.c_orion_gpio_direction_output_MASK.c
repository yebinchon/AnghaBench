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
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_OUTPUT_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned pin,
	int value)
{
	unsigned long flags;

	if (!FUNC3(pin, GPIO_OUTPUT_OK))
		return -EINVAL;

	FUNC4(&gpio_lock, flags);

	/* Disable blinking. */
	FUNC0(pin, 0);

	/* Configure GPIO output value. */
	FUNC2(pin, value);

	/* Configure GPIO direction. */
	FUNC1(pin, 0);

	FUNC5(&gpio_lock, flags);

	return 0;
}