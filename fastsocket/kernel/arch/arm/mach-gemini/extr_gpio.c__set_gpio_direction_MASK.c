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
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ GPIO_DIR ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip, unsigned offset,
				int dir)
{
	unsigned int base = FUNC0(offset / 32);
	unsigned int reg;

	reg = FUNC1(base + GPIO_DIR);
	if (dir)
		reg |= 1 << (offset % 32);
	else
		reg &= ~(1 << (offset % 32));
	FUNC2(reg, base + GPIO_DIR);
}