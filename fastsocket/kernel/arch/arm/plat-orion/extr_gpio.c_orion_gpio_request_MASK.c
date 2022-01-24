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
 int /*<<< orphan*/  GPIO_INPUT_OK ; 
 int /*<<< orphan*/  GPIO_OUTPUT_OK ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct gpio_chip *chip, unsigned pin)
{
	if (FUNC0(pin, GPIO_INPUT_OK) ||
	    FUNC0(pin, GPIO_OUTPUT_OK))
		return 0;
	return -EINVAL;
}