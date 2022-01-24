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
struct r6040_private {int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  tx_ring_dma; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; int /*<<< orphan*/  timer; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_DESC_SIZE ; 
 int /*<<< orphan*/  TX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct r6040_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct r6040_private *lp = FUNC3(dev);
	struct pci_dev *pdev = lp->pdev;

	/* deleted timer */
	FUNC0(&lp->timer);

	FUNC9(&lp->lock);
	FUNC2(&lp->napi);
	FUNC4(dev);
	FUNC6(dev);

	FUNC1(dev->irq, dev);

	/* Free RX buffer */
	FUNC7(dev);

	/* Free TX buffer */
	FUNC8(dev);

	FUNC10(&lp->lock);

	/* Free Descriptor memory */
	if (lp->rx_ring) {
		FUNC5(pdev, RX_DESC_SIZE, lp->rx_ring, lp->rx_ring_dma);
		lp->rx_ring = NULL;
	}

	if (lp->tx_ring) {
		FUNC5(pdev, TX_DESC_SIZE, lp->tx_ring, lp->tx_ring_dma);
		lp->tx_ring = NULL;
	}

	return 0;
}