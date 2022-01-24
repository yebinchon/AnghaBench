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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  eisa_irq_lock ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int master_mask ; 
 int slave_mask ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int wax_irq, void *intr_dev)
{
	int irq = FUNC4(0xfc01f000); /* EISA supports 16 irqs */
	unsigned long flags;
        
	FUNC5(&eisa_irq_lock, flags);
	/* read IRR command */
	FUNC3(0x0a, 0x20);
	FUNC3(0x0a, 0xa0);

	FUNC0("irq IAR %02x 8259-1 irr %02x 8259-2 irr %02x\n",
		   irq, FUNC2(0x20), FUNC2(0xa0));
   
	/* read ISR command */
	FUNC3(0x0a, 0x20);
	FUNC3(0x0a, 0xa0);
	FUNC0("irq 8259-1 isr %02x imr %02x 8259-2 isr %02x imr %02x\n",
		 FUNC2(0x20), FUNC2(0x21), FUNC2(0xa0), FUNC2(0xa1));
	
	irq &= 0xf;
	
	/* mask irq and write eoi */
	if (irq & 8) {
		slave_mask |= (1 << (irq&7));
		FUNC3(slave_mask, 0xa1);
		FUNC3(0x60 | (irq&7),0xa0);/* 'Specific EOI' to slave */
		FUNC3(0x62,0x20);	/* 'Specific EOI' to master-IRQ2 */
		
	} else {
		master_mask |= (1 << (irq&7));
		FUNC3(master_mask, 0x21);
		FUNC3(0x60|irq,0x20);	/* 'Specific EOI' to master */
	}
	FUNC6(&eisa_irq_lock, flags);

	FUNC1(irq);
   
	FUNC5(&eisa_irq_lock, flags);
	/* unmask */
        if (irq & 8) {
		slave_mask &= ~(1 << (irq&7));
		FUNC3(slave_mask, 0xa1);
	} else {
		master_mask &= ~(1 << (irq&7));
		FUNC3(master_mask, 0x21);
	}
	FUNC6(&eisa_irq_lock, flags);
	return IRQ_HANDLED;
}