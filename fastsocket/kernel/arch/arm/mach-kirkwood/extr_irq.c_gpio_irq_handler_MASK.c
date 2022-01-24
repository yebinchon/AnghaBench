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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int IRQ_KIRKWOOD_GPIO_HIGH_16_23 ; 
 unsigned int IRQ_KIRKWOOD_GPIO_LOW_0_7 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq, struct irq_desc *desc)
{
	FUNC0(irq < IRQ_KIRKWOOD_GPIO_LOW_0_7);
	FUNC0(irq > IRQ_KIRKWOOD_GPIO_HIGH_16_23);

	FUNC1((irq - IRQ_KIRKWOOD_GPIO_LOW_0_7) << 3);
}