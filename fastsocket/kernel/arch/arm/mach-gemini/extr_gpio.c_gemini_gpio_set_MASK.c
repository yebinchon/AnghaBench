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
 scalar_t__ GPIO_DATA_CLR ; 
 scalar_t__ GPIO_DATA_SET ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned offset, int value)
{
	unsigned int base = FUNC0(offset / 32);

	if (value)
		FUNC1(1 << (offset % 32), base + GPIO_DATA_SET);
	else
		FUNC1(1 << (offset % 32), base + GPIO_DATA_CLR);
}