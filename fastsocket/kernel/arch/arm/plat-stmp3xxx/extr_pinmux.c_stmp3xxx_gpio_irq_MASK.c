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
typedef  int u32 ;
struct stmp3xxx_pinmux_bank {int virq; int /*<<< orphan*/  irqstat; } ;
struct irq_desc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* handle_irq ) (int,TYPE_1__*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct stmp3xxx_pinmux_bank* FUNC1 (int) ; 
 TYPE_1__* irq_desc ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(u32 irq, struct irq_desc *desc)
{
	struct stmp3xxx_pinmux_bank *pm = FUNC1(irq);
	int gpio_irq = pm->virq;
	u32 stat = FUNC0(pm->irqstat);

	while (stat) {
		if (stat & 1)
			irq_desc[gpio_irq].handle_irq(gpio_irq,
				&irq_desc[gpio_irq]);
		gpio_irq++;
		stat >>= 1;
	}
}