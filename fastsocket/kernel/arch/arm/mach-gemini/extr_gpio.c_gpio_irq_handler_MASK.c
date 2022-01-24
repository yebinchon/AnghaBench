#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_desc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* handle_irq ) (unsigned int,TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ GPIO_INT_STAT ; 
 unsigned int GPIO_IRQ_BASE ; 
 unsigned int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 TYPE_1__* irq_desc ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(unsigned int irq, struct irq_desc *desc)
{
	unsigned int gpio_irq_no, irq_stat;
	unsigned int port = (unsigned int)FUNC3(irq);

	irq_stat = FUNC2(FUNC1(port) + GPIO_INT_STAT);

	gpio_irq_no = GPIO_IRQ_BASE + port * 32;
	for (; irq_stat != 0; irq_stat >>= 1, gpio_irq_no++) {

		if ((irq_stat & 1) == 0)
			continue;

		FUNC0(!(irq_desc[gpio_irq_no].handle_irq));
		irq_desc[gpio_irq_no].handle_irq(gpio_irq_no,
				&irq_desc[gpio_irq_no]);
	}
}