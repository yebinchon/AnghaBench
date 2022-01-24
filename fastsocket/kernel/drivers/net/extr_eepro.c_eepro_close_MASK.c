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
struct net_device {int base_addr; int /*<<< orphan*/  irq; } ;
struct eepro_local {scalar_t__ tx_last; int /*<<< orphan*/  xmt_lower_limit; int /*<<< orphan*/  tx_end; int /*<<< orphan*/  tx_start; } ;

/* Variables and functions */
 int REG1 ; 
 short STOP_RCV_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 short FUNC6 (int) ; 
 struct eepro_local* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (short,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct eepro_local *lp = FUNC7(dev);
	int ioaddr = dev->base_addr;
	short temp_reg;

	FUNC8(dev);

	FUNC4(ioaddr); /* Switch back to Bank 1 */

	/* Disable the physical interrupt line. */
	temp_reg = FUNC6(ioaddr + REG1);
	FUNC9(temp_reg & 0x7f, ioaddr + REG1);

	FUNC3(ioaddr); /* Switch back to Bank 0 */

	/* Flush the Tx and disable Rx. */
	FUNC9(STOP_RCV_CMD, ioaddr);
	lp->tx_start = lp->tx_end = lp->xmt_lower_limit;
	lp->tx_last = 0;

	/* Mask all the interrupts. */
	FUNC1(ioaddr);

	/* clear all interrupts */
	FUNC0(ioaddr);

	/* Reset the 82595 */
	FUNC2(ioaddr);

	/* release the interrupt */
	FUNC5(dev->irq, dev);

	/* Update the statistics here. What statistics? */

	return 0;
}