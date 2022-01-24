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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct at91_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  ether_clk; } ;

/* Variables and functions */
 unsigned long AT91_EMAC_ABT ; 
 unsigned long AT91_EMAC_CSR ; 
 int /*<<< orphan*/  AT91_EMAC_CTL ; 
 int /*<<< orphan*/  AT91_EMAC_IER ; 
 unsigned long AT91_EMAC_RBNA ; 
 unsigned long AT91_EMAC_RCOM ; 
 unsigned long AT91_EMAC_ROVR ; 
 unsigned long AT91_EMAC_RTRY ; 
 unsigned long AT91_EMAC_TCOM ; 
 unsigned long AT91_EMAC_TUND ; 
 int EADDRNOTAVAIL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct at91_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct at91_private *lp = FUNC8(dev);
	unsigned long ctl;

	if (!FUNC7(dev->dev_addr))
		return -EADDRNOTAVAIL;

	FUNC3(lp->ether_clk);		/* Re-enable Peripheral clock */

	/* Clear internal statistics */
	ctl = FUNC0(AT91_EMAC_CTL);
	FUNC1(AT91_EMAC_CTL, ctl | AT91_EMAC_CSR);

	/* Update the MAC address (incase user has changed it) */
	FUNC13(dev);

	/* Enable PHY interrupt */
	FUNC6(dev);

	/* Enable MAC interrupts */
	FUNC1(AT91_EMAC_IER, AT91_EMAC_RCOM | AT91_EMAC_RBNA
				| AT91_EMAC_TUND | AT91_EMAC_RTRY | AT91_EMAC_TCOM
				| AT91_EMAC_ROVR | AT91_EMAC_ABT);

	/* Determine current link speed */
	FUNC10(&lp->lock);
	FUNC5();
	FUNC12(dev, 0);
	FUNC4();
	FUNC11(&lp->lock);

	FUNC2(dev);
	FUNC9(dev);
	return 0;
}