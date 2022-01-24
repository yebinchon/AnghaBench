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
struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPIO_DAT ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (unsigned int) ; 
 struct of_mm_gpio_chip* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned int gpio)
{
	struct of_mm_gpio_chip *mm = FUNC2(gc);

	return FUNC0(mm->regs + GPIO_DAT) & FUNC1(gpio);
}