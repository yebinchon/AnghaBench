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
struct nmk_gpio_chip {scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ NMK_GPIO_IC ; 
 int FUNC0 (unsigned int) ; 
 struct nmk_gpio_chip* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(unsigned int irq)
{
	int gpio;
	struct nmk_gpio_chip *nmk_chip;

	gpio = FUNC0(irq);
	nmk_chip = FUNC1(irq);
	if (!nmk_chip)
		return;
	FUNC3(FUNC2(gpio), nmk_chip->addr + NMK_GPIO_IC);
}