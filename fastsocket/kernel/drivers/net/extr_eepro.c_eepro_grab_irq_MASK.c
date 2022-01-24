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
struct net_device {int base_addr; int irq; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int INT_NO_REG ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int* irqrmap ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int FUNC11 (unsigned long) ; 
 unsigned long FUNC12 () ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct net_device*) ; 

__attribute__((used)) static int	FUNC14(struct net_device *dev)
{
	int irqlist[] = { 3, 4, 5, 7, 9, 10, 11, 12, 0 };
	int *irqp = irqlist, temp_reg, ioaddr = dev->base_addr;

	FUNC7(ioaddr); /* be CAREFUL, BANK 1 now */

	/* Enable the interrupt line. */
	FUNC5(ioaddr);

	/* be CAREFUL, BANK 0 now */
	FUNC6(ioaddr);

	/* clear all interrupts */
	FUNC0(ioaddr);

	/* Let EXEC event to interrupt */
	FUNC4(ioaddr);

	do {
		FUNC7(ioaddr); /* be CAREFUL, BANK 1 now */

		temp_reg = FUNC8(ioaddr + INT_NO_REG);
		FUNC10((temp_reg & 0xf8) | irqrmap[*irqp], ioaddr + INT_NO_REG);

		FUNC6(ioaddr); /* Switch back to Bank 0 */

		if (FUNC13 (*irqp, NULL, IRQF_SHARED, "bogus", dev) != EBUSY) {
			unsigned long irq_mask;
			/* Twinkle the interrupt, and check if it's seen */
			irq_mask = FUNC12();

			FUNC1(ioaddr); /* RESET the 82595 */
			FUNC9(20);

			if (*irqp == FUNC11(irq_mask))  /* It's a good IRQ line */
				break;

			/* clear all interrupts */
			FUNC0(ioaddr);
		}
	} while (*++irqp);

	FUNC7(ioaddr); /* Switch back to Bank 1 */

	/* Disable the physical interrupt line. */
	FUNC3(ioaddr);

	FUNC6(ioaddr); /* Switch back to Bank 0 */

	/* Mask all the interrupts. */
	FUNC2(ioaddr);

	/* clear all interrupts */
	FUNC0(ioaddr);

	return dev->irq;
}