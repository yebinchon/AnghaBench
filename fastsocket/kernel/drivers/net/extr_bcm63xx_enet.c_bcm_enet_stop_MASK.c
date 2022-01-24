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
struct net_device {int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int rx_ring_size; int /*<<< orphan*/ * phydev; scalar_t__ has_phy; int /*<<< orphan*/  irq_rx; int /*<<< orphan*/  irq_tx; int /*<<< orphan*/  tx_desc_dma; struct bcm_enet_desc* tx_desc_cpu; int /*<<< orphan*/  tx_desc_alloc_size; int /*<<< orphan*/  rx_desc_dma; struct bcm_enet_desc* rx_desc_cpu; int /*<<< orphan*/  rx_desc_alloc_size; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_skb_size; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_timeout; int /*<<< orphan*/  napi; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int /*<<< orphan*/  address; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENET_IRMASK_REG ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_enet_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,struct bcm_enet_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct bcm_enet_priv* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct device *kdev;
	int i;

	priv = FUNC14(dev);
	kdev = &priv->pdev->dev;

	FUNC15(dev);
	FUNC13(&priv->napi);
	if (priv->has_phy)
		FUNC17(priv->phydev);
	FUNC4(&priv->rx_timeout);

	/* mask all interrupts */
	FUNC8(priv, 0, ENET_IRMASK_REG);
	FUNC7(priv, 0, FUNC0(priv->rx_chan));
	FUNC7(priv, 0, FUNC0(priv->tx_chan));

	/* make sure no mib update is scheduled */
	FUNC9();

	/* disable dma & mac */
	FUNC1(priv, priv->tx_chan);
	FUNC1(priv, priv->rx_chan);
	FUNC2(priv);

	/* force reclaim of all tx buffers */
	FUNC3(dev, 1);

	/* free the rx skb ring */
	for (i = 0; i < priv->rx_ring_size; i++) {
		struct bcm_enet_desc *desc;

		if (!priv->rx_skb[i])
			continue;

		desc = &priv->rx_desc_cpu[i];
		FUNC6(kdev, desc->address, priv->rx_skb_size,
				 DMA_FROM_DEVICE);
		FUNC12(priv->rx_skb[i]);
	}

	/* free remaining allocated memory */
	FUNC11(priv->rx_skb);
	FUNC11(priv->tx_skb);
	FUNC5(kdev, priv->rx_desc_alloc_size,
			  priv->rx_desc_cpu, priv->rx_desc_dma);
	FUNC5(kdev, priv->tx_desc_alloc_size,
			  priv->tx_desc_cpu, priv->tx_desc_dma);
	FUNC10(priv->irq_tx, dev);
	FUNC10(priv->irq_rx, dev);
	FUNC10(dev->irq, dev);

	/* release phy */
	if (priv->has_phy) {
		FUNC16(priv->phydev);
		priv->phydev = NULL;
	}

	return 0;
}