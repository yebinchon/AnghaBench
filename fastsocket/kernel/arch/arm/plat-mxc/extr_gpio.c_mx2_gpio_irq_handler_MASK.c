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
struct mxc_gpio_port {scalar_t__ base; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPIO_IMR ; 
 scalar_t__ GPIO_ISR ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int gpio_table_size ; 
 int /*<<< orphan*/  FUNC2 (struct mxc_gpio_port*,int) ; 

__attribute__((used)) static void FUNC3(u32 irq, struct irq_desc *desc)
{
	int i;
	u32 irq_msk, irq_stat;
	struct mxc_gpio_port *port = (struct mxc_gpio_port *)FUNC1(irq);

	/* walk through all interrupt status registers */
	for (i = 0; i < gpio_table_size; i++) {
		irq_msk = FUNC0(port[i].base + GPIO_IMR);
		if (!irq_msk)
			continue;

		irq_stat = FUNC0(port[i].base + GPIO_ISR) & irq_msk;
		if (irq_stat)
			FUNC2(&port[i], irq_stat);
	}
}