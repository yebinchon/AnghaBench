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
typedef  int u32 ;
struct irq_desc {int /*<<< orphan*/  (* handle_irq ) (int,struct irq_desc*) ;struct asic3* handler_data; TYPE_1__* chip; } ;
struct asic3 {int irq_base; int* irq_bothedge; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ack ) (unsigned int) ;} ;

/* Variables and functions */
 int ASIC3_GPIOS_PER_BANK ; 
 int ASIC3_GPIO_A_BASE ; 
 int ASIC3_GPIO_BASE_INCR ; 
 scalar_t__ ASIC3_GPIO_INT_STATUS ; 
 int ASIC3_NR_IRQS ; 
 int ASIC3_NUM_GPIOS ; 
 int ASIC3_NUM_GPIO_BANKS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTR ; 
 int MAX_ASIC_ISR_LOOPS ; 
 int /*<<< orphan*/  P_INT_STAT ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,unsigned long,int) ; 
 void* FUNC2 (struct asic3*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct asic3*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct irq_desc* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct irq_desc*) ; 

__attribute__((used)) static void FUNC11(unsigned int irq, struct irq_desc *desc)
{
	int iter, i;
	unsigned long flags;
	struct asic3 *asic;

	desc->chip->ack(irq);

	asic = desc->handler_data;

	for (iter = 0 ; iter < MAX_ASIC_ISR_LOOPS; iter++) {
		u32 status;
		int bank;

		FUNC6(&asic->lock, flags);
		status = FUNC2(asic,
					     FUNC0(INTR, P_INT_STAT));
		FUNC7(&asic->lock, flags);

		/* Check all ten register bits */
		if ((status & 0x3ff) == 0)
			break;

		/* Handle GPIO IRQs */
		for (bank = 0; bank < ASIC3_NUM_GPIO_BANKS; bank++) {
			if (status & (1 << bank)) {
				unsigned long base, istat;

				base = ASIC3_GPIO_A_BASE
				       + bank * ASIC3_GPIO_BASE_INCR;

				FUNC6(&asic->lock, flags);
				istat = FUNC2(asic,
							    base +
							    ASIC3_GPIO_INT_STATUS);
				/* Clearing IntStatus */
				FUNC3(asic,
						     base +
						     ASIC3_GPIO_INT_STATUS, 0);
				FUNC7(&asic->lock, flags);

				for (i = 0; i < ASIC3_GPIOS_PER_BANK; i++) {
					int bit = (1 << i);
					unsigned int irqnr;

					if (!(istat & bit))
						continue;

					irqnr = asic->irq_base +
						(ASIC3_GPIOS_PER_BANK * bank)
						+ i;
					desc = FUNC5(irqnr);
					desc->handle_irq(irqnr, desc);
					if (asic->irq_bothedge[bank] & bit)
						FUNC1(asic, base,
								    bit);
				}
			}
		}

		/* Handle remaining IRQs in the status register */
		for (i = ASIC3_NUM_GPIOS; i < ASIC3_NR_IRQS; i++) {
			/* They start at bit 4 and go up */
			if (status & (1 << (i - ASIC3_NUM_GPIOS + 4))) {
				desc = FUNC5(asic->irq_base + i);
				desc->handle_irq(asic->irq_base + i,
						 desc);
			}
		}
	}

	if (iter >= MAX_ASIC_ISR_LOOPS)
		FUNC4(asic->dev, "interrupt processing overrun\n");
}