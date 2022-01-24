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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int IRQ_TYPE_EDGE_BOTH ; 
 int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC5 (int,struct irq_desc*) ; 
 int FUNC6 (int) ; 
 struct irq_desc* irq_desc ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

void FUNC9(int pinoff)
{
	u32 cause;
	int pin;

	cause = FUNC7(FUNC0(pinoff)) & FUNC7(FUNC4(pinoff));
	cause |= FUNC7(FUNC1(pinoff)) & FUNC7(FUNC2(pinoff));

	for (pin = pinoff; pin < pinoff + 8; pin++) {
		int irq = FUNC6(pin);
		struct irq_desc *desc = irq_desc + irq;

		if (!(cause & (1 << (pin & 31))))
			continue;

		if ((desc->status & IRQ_TYPE_SENSE_MASK) == IRQ_TYPE_EDGE_BOTH) {
			/* Swap polarity (race with GPIO line) */
			u32 polarity;

			polarity = FUNC7(FUNC3(pin));
			polarity ^= 1 << (pin & 31);
			FUNC8(polarity, FUNC3(pin));
		}
		FUNC5(irq, desc);
	}
}