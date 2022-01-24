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
typedef  int u8 ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RX_BUSY ; 
 int /*<<< orphan*/  RX_ENABLE ; 
 int RX_GOOD ; 
 scalar_t__ TX_PAGES ; 
 int /*<<< orphan*/  de600_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int) ; 
 scalar_t__ free_tx_pages ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct net_device	*dev = dev_id;
	u8		irq_status;
	int		retrig = 0;
	int		boguscount = 0;

	FUNC7(&de600_lock);

	FUNC5();
	irq_status = FUNC1(dev);

	do {
		FUNC4("de600_interrupt (%02X)\n", irq_status);

		if (irq_status & RX_GOOD)
			FUNC2(dev);
		else if (!(irq_status & RX_BUSY))
			FUNC0(RX_ENABLE);

		/* Any transmission in progress? */
		if (free_tx_pages < TX_PAGES)
			retrig = FUNC3(dev, irq_status);
		else
			retrig = 0;

		irq_status = FUNC1(dev);
	} while ( (irq_status & RX_GOOD) || ((++boguscount < 100) && retrig) );
	/*
	 * Yeah, it _looks_ like busy waiting, smells like busy waiting
	 * and I know it's not PC, but please, it will only occur once
	 * in a while and then only for a loop or so (< 1ms for sure!)
	 */

	/* Enable adapter interrupts */
	FUNC6();
	if (retrig)
		FUNC9(dev);
	FUNC8(&de600_lock);
	return IRQ_HANDLED;
}