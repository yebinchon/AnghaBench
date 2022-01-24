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
typedef  int u32 ;
struct irq_desc {int status; } ;
struct gpio_bank {unsigned int level_mask; } ;

/* Variables and functions */
 unsigned int IH_GPIO_BASE ; 
 int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_bank*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_bank*,int,int) ; 
 int FUNC3 (unsigned int) ; 
 struct gpio_bank* FUNC4 (unsigned int) ; 
 struct irq_desc* FUNC5 (unsigned int) ; 

__attribute__((used)) static void FUNC6(unsigned int irq)
{
	unsigned int gpio = irq - IH_GPIO_BASE;
	struct gpio_bank *bank = FUNC4(irq);
	unsigned int irq_mask = 1 << FUNC3(gpio);
	struct irq_desc *desc = FUNC5(irq);
	u32 trigger = desc->status & IRQ_TYPE_SENSE_MASK;

	if (trigger)
		FUNC2(bank, FUNC3(gpio), trigger);

	/* For level-triggered GPIOs, the clearing must be done after
	 * the HW source is cleared, thus after the handler has run */
	if (bank->level_mask & irq_mask) {
		FUNC1(bank, gpio, 0);
		FUNC0(bank, gpio);
	}

	FUNC1(bank, gpio, 1);
}