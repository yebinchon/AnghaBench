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
struct sc92031_priv {int /*<<< orphan*/  rx_ring_dma_addr; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_bufs_dma_addr; int /*<<< orphan*/  tx_bufs; int /*<<< orphan*/  lock; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_BUF_LEN ; 
 int /*<<< orphan*/  TX_BUF_TOT_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sc92031_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct sc92031_priv *priv = FUNC4(dev);
	struct pci_dev *pdev = priv->pdev;

	FUNC5(dev);

	/* Disable interrupts, stop Tx and Rx. */
	FUNC7(dev);

	FUNC8(&priv->lock);

	FUNC0(dev);
	FUNC1(dev);
	FUNC3();

	FUNC9(&priv->lock);

	FUNC2(pdev->irq, dev);
	FUNC6(pdev, TX_BUF_TOT_LEN, priv->tx_bufs,
			priv->tx_bufs_dma_addr);
	FUNC6(pdev, RX_BUF_LEN, priv->rx_ring,
			priv->rx_ring_dma_addr);

	return 0;
}