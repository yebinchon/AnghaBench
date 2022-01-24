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
struct gpio_bank {int dummy; } ;

/* Variables and functions */
 unsigned int IH_GPIO_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_bank*,unsigned int) ; 
 struct gpio_bank* FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	unsigned int gpio = irq - IH_GPIO_BASE;
	struct gpio_bank *bank = FUNC1(irq);

	FUNC0(bank, gpio);
}