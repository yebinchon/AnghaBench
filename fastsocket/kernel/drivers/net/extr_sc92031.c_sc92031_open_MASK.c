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
struct sc92031_priv {int /*<<< orphan*/  rx_ring_dma_addr; void* rx_ring; int /*<<< orphan*/  tx_bufs_dma_addr; void* tx_bufs; int /*<<< orphan*/  lock; scalar_t__ pm_config; scalar_t__ tx_tail; scalar_t__ tx_head; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  RX_BUF_LEN ; 
 int /*<<< orphan*/  TX_BUF_TOT_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sc92031_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 void* FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  sc92031_interrupt ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	int err;
	struct sc92031_priv *priv = FUNC2(dev);
	struct pci_dev *pdev = priv->pdev;

	priv->rx_ring = FUNC6(pdev, RX_BUF_LEN,
			&priv->rx_ring_dma_addr);
	if (FUNC12(!priv->rx_ring)) {
		err = -ENOMEM;
		goto out_alloc_rx_ring;
	}

	priv->tx_bufs = FUNC6(pdev, TX_BUF_TOT_LEN,
			&priv->tx_bufs_dma_addr);
	if (FUNC12(!priv->tx_bufs)) {
		err = -ENOMEM;
		goto out_alloc_tx_bufs;
	}
	priv->tx_head = priv->tx_tail = 0;

	err = FUNC8(pdev->irq, sc92031_interrupt,
			IRQF_SHARED, dev->name, dev);
	if (FUNC12(err < 0))
		goto out_request_irq;

	priv->pm_config = 0;

	/* Interrupts already disabled by sc92031_stop or sc92031_probe */
	FUNC10(&priv->lock);

	FUNC0(dev);
	FUNC1();

	FUNC11(&priv->lock);
	FUNC9(dev);

	if (FUNC3(dev))
		FUNC4(dev);
	else
		FUNC5(dev);

	return 0;

out_request_irq:
	FUNC7(pdev, TX_BUF_TOT_LEN, priv->tx_bufs,
			priv->tx_bufs_dma_addr);
out_alloc_tx_bufs:
	FUNC7(pdev, RX_BUF_LEN, priv->rx_ring,
			priv->rx_ring_dma_addr);
out_alloc_rx_ring:
	return err;
}