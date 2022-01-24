#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct nmk_gpio_chip {scalar_t__ addr; TYPE_1__ chip; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int /*<<< orphan*/  (* ack ) (unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ NMK_GPIO_IS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct irq_chip* FUNC3 (unsigned int) ; 
 struct nmk_gpio_chip* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

__attribute__((used)) static void FUNC7(unsigned int irq, struct irq_desc *desc)
{
	struct nmk_gpio_chip *nmk_chip;
	struct irq_chip *host_chip;
	unsigned int gpio_irq;
	u32 pending;
	unsigned int first_irq;

	nmk_chip = FUNC4(irq);
	first_irq = FUNC0(nmk_chip->chip.base);
	while ( (pending = FUNC5(nmk_chip->addr + NMK_GPIO_IS)) ) {
		gpio_irq = first_irq + FUNC1(pending);
		FUNC2(gpio_irq);
	}
	if (0) {/* don't ack parent irq, as ack == disable */
		host_chip = FUNC3(irq);
		host_chip->ack(irq);
	}
}