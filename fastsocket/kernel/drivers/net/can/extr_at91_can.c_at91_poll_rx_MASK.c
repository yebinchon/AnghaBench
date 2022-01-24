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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct at91_priv {unsigned int rx_next; } ;

/* Variables and functions */
 unsigned int AT91_MB_RX_LOW_LAST ; 
 int AT91_MB_RX_LOW_MASK ; 
 unsigned int AT91_MB_RX_NUM ; 
 int /*<<< orphan*/  AT91_SR ; 
 int /*<<< orphan*/  FUNC0 (struct at91_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_priv*,unsigned int) ; 
 int FUNC2 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC5 (unsigned long const*,unsigned int,unsigned int) ; 
 struct at91_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int quota)
{
	struct at91_priv *priv = FUNC6(dev);
	u32 reg_sr = FUNC2(priv, AT91_SR);
	const unsigned long *addr = (unsigned long *)&reg_sr;
	unsigned int mb;
	int received = 0;

	if (priv->rx_next > AT91_MB_RX_LOW_LAST &&
	    reg_sr & AT91_MB_RX_LOW_MASK)
		FUNC4(dev->dev.parent,
			 "order of incoming frames cannot be guaranteed\n");

 again:
	for (mb = FUNC5(addr, AT91_MB_RX_NUM, priv->rx_next);
	     mb < AT91_MB_RX_NUM && quota > 0;
	     reg_sr = FUNC2(priv, AT91_SR),
	     mb = FUNC5(addr, AT91_MB_RX_NUM, ++priv->rx_next)) {
		FUNC3(dev, mb);

		/* reactivate mailboxes */
		if (mb == AT91_MB_RX_LOW_LAST)
			/* all lower mailboxed, if just finished it */
			FUNC0(priv);
		else if (mb > AT91_MB_RX_LOW_LAST)
			/* only the mailbox we read */
			FUNC1(priv, mb);

		received++;
		quota--;
	}

	/* upper group completed, look again in lower */
	if (priv->rx_next > AT91_MB_RX_LOW_LAST &&
	    quota > 0 && mb >= AT91_MB_RX_NUM) {
		priv->rx_next = 0;
		goto again;
	}

	return received;
}