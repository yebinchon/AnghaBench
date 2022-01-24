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
struct r6040_private {scalar_t__ switch_sig; int /*<<< orphan*/  timer; int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_ring_dma; void* rx_ring; int /*<<< orphan*/  pdev; int /*<<< orphan*/  tx_ring_dma; void* tx_ring; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ HZ ; 
 scalar_t__ ICPLUS_PHY_ID ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  RX_DESC_SIZE ; 
 int /*<<< orphan*/  TX_DESC_SIZE ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r6040_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r6040_interrupt ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  r6040_timer ; 
 int FUNC7 (struct net_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct r6040_private *lp = FUNC2(dev);
	int ret;

	/* Request IRQ and Register interrupt handler */
	ret = FUNC8(dev->irq, &r6040_interrupt,
		IRQF_SHARED, dev->name, dev);
	if (ret)
		return ret;

	/* Set MAC address */
	FUNC6(dev);

	/* Allocate Descriptor memory */
	lp->rx_ring =
		FUNC4(lp->pdev, RX_DESC_SIZE, &lp->rx_ring_dma);
	if (!lp->rx_ring)
		return -ENOMEM;

	lp->tx_ring =
		FUNC4(lp->pdev, TX_DESC_SIZE, &lp->tx_ring_dma);
	if (!lp->tx_ring) {
		FUNC5(lp->pdev, RX_DESC_SIZE, lp->rx_ring,
				     lp->rx_ring_dma);
		return -ENOMEM;
	}

	ret = FUNC7(dev);
	if (ret) {
		FUNC5(lp->pdev, TX_DESC_SIZE, lp->tx_ring,
							lp->tx_ring_dma);
		FUNC5(lp->pdev, RX_DESC_SIZE, lp->rx_ring,
							lp->rx_ring_dma);
		return ret;
	}

	FUNC1(&lp->napi);
	FUNC3(dev);

	/* set and active a timer process */
	FUNC9(&lp->timer, r6040_timer, (unsigned long) dev);
	if (lp->switch_sig != ICPLUS_PHY_ID)
		FUNC0(&lp->timer, jiffies + HZ);
	return 0;
}