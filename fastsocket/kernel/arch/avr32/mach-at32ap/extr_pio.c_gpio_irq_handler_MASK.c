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
struct pio_device {int dummy; } ;
struct irq_desc {int /*<<< orphan*/  (* handle_irq ) (int,struct irq_desc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IMR ; 
 int /*<<< orphan*/  ISR ; 
 int FUNC0 (int) ; 
 struct pio_device* FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 struct irq_desc* irq_desc ; 
 int FUNC3 (struct pio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct irq_desc*) ; 

__attribute__((used)) static void FUNC5(unsigned irq, struct irq_desc *desc)
{
	struct pio_device	*pio = FUNC1(irq);
	unsigned		gpio_irq;

	gpio_irq = (unsigned) FUNC2(irq);
	for (;;) {
		u32		isr;
		struct irq_desc	*d;

		/* ack pending GPIO interrupts */
		isr = FUNC3(pio, ISR) & FUNC3(pio, IMR);
		if (!isr)
			break;
		do {
			int i;

			i = FUNC0(isr) - 1;
			isr &= ~(1 << i);

			i += gpio_irq;
			d = &irq_desc[i];

			d->handle_irq(i, d);
		} while (isr);
	}
}