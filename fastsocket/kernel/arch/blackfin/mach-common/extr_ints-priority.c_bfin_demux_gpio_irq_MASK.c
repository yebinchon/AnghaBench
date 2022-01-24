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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ GPIO_BANKSIZE ; 
#define  IRQ_MAC_RX 135 
 unsigned int IRQ_PF0 ; 
 unsigned int IRQ_PF16 ; 
 unsigned int IRQ_PF32 ; 
 unsigned int IRQ_PG0 ; 
 unsigned int IRQ_PH0 ; 
#define  IRQ_PORTF_INTA 134 
#define  IRQ_PORTG_INTA 133 
#define  IRQ_PORTH_INTA 132 
#define  IRQ_PROG0_INTA 131 
#define  IRQ_PROG1_INTA 130 
#define  IRQ_PROG2_INTA 129 
#define  IRQ_PROG_INTA 128 
 unsigned int MAX_BLACKFIN_GPIOS ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int inta_irq,
				struct irq_desc *desc)
{
	unsigned int i, gpio, mask, irq, search = 0;

	switch (inta_irq) {
#if defined(CONFIG_BF53x)
	case IRQ_PROG_INTA:
		irq = IRQ_PF0;
		search = 1;
		break;
# if defined(BF537_FAMILY) && !(defined(CONFIG_BFIN_MAC) || defined(CONFIG_BFIN_MAC_MODULE))
	case IRQ_MAC_RX:
		irq = IRQ_PH0;
		break;
# endif
#elif defined(CONFIG_BF538) || defined(CONFIG_BF539)
	case IRQ_PORTF_INTA:
		irq = IRQ_PF0;
		break;
#elif defined(CONFIG_BF52x) || defined(CONFIG_BF51x)
	case IRQ_PORTF_INTA:
		irq = IRQ_PF0;
		break;
	case IRQ_PORTG_INTA:
		irq = IRQ_PG0;
		break;
	case IRQ_PORTH_INTA:
		irq = IRQ_PH0;
		break;
#elif defined(CONFIG_BF561)
	case IRQ_PROG0_INTA:
		irq = IRQ_PF0;
		break;
	case IRQ_PROG1_INTA:
		irq = IRQ_PF16;
		break;
	case IRQ_PROG2_INTA:
		irq = IRQ_PF32;
		break;
#endif
	default:
		FUNC0();
		return;
	}

	if (search) {
		for (i = 0; i < MAX_BLACKFIN_GPIOS; i += GPIO_BANKSIZE) {
			irq += i;

			mask = FUNC2(i) & FUNC3(i);

			while (mask) {
				if (mask & 1)
					FUNC1(irq);
				irq++;
				mask >>= 1;
			}
		}
	} else {
			gpio = FUNC4(irq);
			mask = FUNC2(gpio) & FUNC3(gpio);

			do {
				if (mask & 1)
					FUNC1(irq);
				irq++;
				mask >>= 1;
			} while (mask);
	}

}