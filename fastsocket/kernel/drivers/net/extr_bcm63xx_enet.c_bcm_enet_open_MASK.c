#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct sk_buff {int dummy; } ;
struct phy_device {int supported; int advertising; TYPE_2__* drv; int /*<<< orphan*/  addr; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int old_duplex; int old_pause; int rx_ring_size; int rx_desc_dma; unsigned int rx_desc_alloc_size; int tx_ring_size; int tx_desc_dma; unsigned int tx_desc_alloc_size; int tx_desc_count; struct phy_device* phydev; int /*<<< orphan*/  irq_rx; int /*<<< orphan*/  irq_tx; struct bcm_enet_desc* rx_desc_cpu; struct bcm_enet_desc* tx_desc_cpu; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_skb_size; scalar_t__ has_phy; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  napi; int /*<<< orphan*/  hw_mtu; scalar_t__ rx_curr_desc; scalar_t__ rx_dirty_desc; scalar_t__ rx_desc_count; int /*<<< orphan*/  tx_lock; scalar_t__ tx_curr_desc; scalar_t__ tx_dirty_desc; scalar_t__ old_link; scalar_t__ pause_tx; scalar_t__ pause_rx; scalar_t__ pause_auto; int /*<<< orphan*/  phy_id; scalar_t__ mac_id; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  phy_id ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int BCMENET_DMA_MAXBURST ; 
 int /*<<< orphan*/  BCMENET_TX_FIFO_TRESH ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENETDMA_BUFALLOC_FORCE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENETDMA_CFG_EN_MASK ; 
 int /*<<< orphan*/  ENETDMA_CFG_REG ; 
 int ENETDMA_CHANCFG_EN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int ENETDMA_IR_PKTDONE_MASK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENET_CTL_ENABLE_MASK ; 
 int /*<<< orphan*/  ENET_CTL_REG ; 
 int /*<<< orphan*/  ENET_IRMASK_REG ; 
 int /*<<< orphan*/  ENET_IR_MIB ; 
 int /*<<< orphan*/  ENET_IR_REG ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  ENET_RXMAXLEN_REG ; 
 int /*<<< orphan*/  ENET_TXMAXLEN_REG ; 
 int /*<<< orphan*/  ENET_TXWMARK_REG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_DISABLED ; 
 int IRQF_SAMPLE_RANDOM ; 
 scalar_t__ FUNC13 (struct phy_device*) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 char* PHY_ID_FMT ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int FUNC14 (struct phy_device*) ; 
 int SUPPORTED_100baseT_Full ; 
 int SUPPORTED_100baseT_Half ; 
 int SUPPORTED_10baseT_Full ; 
 int SUPPORTED_10baseT_Half ; 
 int SUPPORTED_Autoneg ; 
 int SUPPORTED_MII ; 
 int SUPPORTED_Pause ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  bcm_enet_adjust_phy_link ; 
 int /*<<< orphan*/  bcm_enet_isr_dma ; 
 int /*<<< orphan*/  bcm_enet_isr_mac ; 
 scalar_t__ FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC20 (struct device*,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device*,unsigned int,struct bcm_enet_desc*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 void* FUNC28 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 struct bcm_enet_priv* FUNC32 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct net_device*) ; 
 struct phy_device* FUNC34 (struct net_device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC36 (struct phy_device*) ; 
 int FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC38 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 () ; 

__attribute__((used)) static int FUNC41(struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct sockaddr addr;
	struct device *kdev;
	struct phy_device *phydev;
	int i, ret;
	unsigned int size;
	char phy_id[MII_BUS_ID_SIZE + 3];
	void *p;
	u32 val;

	priv = FUNC32(dev);
	kdev = &priv->pdev->dev;

	if (priv->has_phy) {
		/* connect to PHY */
		FUNC38(phy_id, sizeof(phy_id), PHY_ID_FMT,
			 priv->mac_id ? "1" : "0", priv->phy_id);

		phydev = FUNC34(dev, phy_id, &bcm_enet_adjust_phy_link, 0,
				     PHY_INTERFACE_MODE_MII);

		if (FUNC13(phydev)) {
			FUNC18(kdev, "could not attach to PHY\n");
			return FUNC14(phydev);
		}

		/* mask with MAC supported features */
		phydev->supported &= (SUPPORTED_10baseT_Half |
				      SUPPORTED_10baseT_Full |
				      SUPPORTED_100baseT_Half |
				      SUPPORTED_100baseT_Full |
				      SUPPORTED_Autoneg |
				      SUPPORTED_Pause |
				      SUPPORTED_MII);
		phydev->advertising = phydev->supported;

		if (priv->pause_auto && priv->pause_rx && priv->pause_tx)
			phydev->advertising |= SUPPORTED_Pause;
		else
			phydev->advertising &= ~SUPPORTED_Pause;

		FUNC19(kdev, "attached PHY at address %d [%s]\n",
			 phydev->addr, phydev->drv->name);

		priv->old_link = 0;
		priv->old_duplex = -1;
		priv->old_pause = -1;
		priv->phydev = phydev;
	}

	/* mask all interrupts and request them */
	FUNC24(priv, 0, ENET_IRMASK_REG);
	FUNC23(priv, 0, FUNC4(priv->rx_chan));
	FUNC23(priv, 0, FUNC4(priv->tx_chan));

	ret = FUNC37(dev->irq, bcm_enet_isr_mac, 0, dev->name, dev);
	if (ret)
		goto out_phy_disconnect;

	ret = FUNC37(priv->irq_rx, bcm_enet_isr_dma,
			  IRQF_SAMPLE_RANDOM | IRQF_DISABLED, dev->name, dev);
	if (ret)
		goto out_freeirq;

	ret = FUNC37(priv->irq_tx, bcm_enet_isr_dma,
			  IRQF_DISABLED, dev->name, dev);
	if (ret)
		goto out_freeirq_rx;

	/* initialize perfect match registers */
	for (i = 0; i < 4; i++) {
		FUNC24(priv, 0, FUNC12(i));
		FUNC24(priv, 0, FUNC11(i));
	}

	/* write device mac address */
	FUNC29(addr.sa_data, dev->dev_addr, ETH_ALEN);
	FUNC17(dev, &addr);

	/* allocate rx dma ring */
	size = priv->rx_ring_size * sizeof(struct bcm_enet_desc);
	p = FUNC20(kdev, size, &priv->rx_desc_dma, GFP_KERNEL);
	if (!p) {
		FUNC18(kdev, "cannot allocate rx ring %u\n", size);
		ret = -ENOMEM;
		goto out_freeirq_tx;
	}

	FUNC30(p, 0, size);
	priv->rx_desc_alloc_size = size;
	priv->rx_desc_cpu = p;

	/* allocate tx dma ring */
	size = priv->tx_ring_size * sizeof(struct bcm_enet_desc);
	p = FUNC20(kdev, size, &priv->tx_desc_dma, GFP_KERNEL);
	if (!p) {
		FUNC18(kdev, "cannot allocate tx ring\n");
		ret = -ENOMEM;
		goto out_free_rx_ring;
	}

	FUNC30(p, 0, size);
	priv->tx_desc_alloc_size = size;
	priv->tx_desc_cpu = p;

	priv->tx_skb = FUNC28(sizeof(struct sk_buff *) * priv->tx_ring_size,
			       GFP_KERNEL);
	if (!priv->tx_skb) {
		FUNC18(kdev, "cannot allocate rx skb queue\n");
		ret = -ENOMEM;
		goto out_free_tx_ring;
	}

	priv->tx_desc_count = priv->tx_ring_size;
	priv->tx_dirty_desc = 0;
	priv->tx_curr_desc = 0;
	FUNC39(&priv->tx_lock);

	/* init & fill rx ring with skbs */
	priv->rx_skb = FUNC28(sizeof(struct sk_buff *) * priv->rx_ring_size,
			       GFP_KERNEL);
	if (!priv->rx_skb) {
		FUNC18(kdev, "cannot allocate rx skb queue\n");
		ret = -ENOMEM;
		goto out_free_tx_skb;
	}

	priv->rx_desc_count = 0;
	priv->rx_dirty_desc = 0;
	priv->rx_curr_desc = 0;

	/* initialize flow control buffer allocation */
	FUNC23(priv, ENETDMA_BUFALLOC_FORCE_MASK | 0,
			FUNC0(priv->rx_chan));

	if (FUNC16(dev)) {
		FUNC18(kdev, "cannot allocate rx skb queue\n");
		ret = -ENOMEM;
		goto out;
	}

	/* write rx & tx ring addresses */
	FUNC23(priv, priv->rx_desc_dma,
			FUNC7(priv->rx_chan));
	FUNC23(priv, priv->tx_desc_dma,
			FUNC7(priv->tx_chan));

	/* clear remaining state ram for rx & tx channel */
	FUNC23(priv, 0, FUNC8(priv->rx_chan));
	FUNC23(priv, 0, FUNC8(priv->tx_chan));
	FUNC23(priv, 0, FUNC9(priv->rx_chan));
	FUNC23(priv, 0, FUNC9(priv->tx_chan));
	FUNC23(priv, 0, FUNC10(priv->rx_chan));
	FUNC23(priv, 0, FUNC10(priv->tx_chan));

	/* set max rx/tx length */
	FUNC24(priv, priv->hw_mtu, ENET_RXMAXLEN_REG);
	FUNC24(priv, priv->hw_mtu, ENET_TXMAXLEN_REG);

	/* set dma maximum burst len */
	FUNC23(priv, BCMENET_DMA_MAXBURST,
			FUNC6(priv->rx_chan));
	FUNC23(priv, BCMENET_DMA_MAXBURST,
			FUNC6(priv->tx_chan));

	/* set correct transmit fifo watermark */
	FUNC24(priv, BCMENET_TX_FIFO_TRESH, ENET_TXWMARK_REG);

	/* set flow control low/high threshold to 1/3 / 2/3 */
	val = priv->rx_ring_size / 3;
	FUNC23(priv, val, FUNC3(priv->rx_chan));
	val = (priv->rx_ring_size * 2) / 3;
	FUNC23(priv, val, FUNC2(priv->rx_chan));

	/* all set, enable mac and interrupts, start dma engine and
	 * kick rx dma channel */
	FUNC40();
	FUNC24(priv, ENET_CTL_ENABLE_MASK, ENET_CTL_REG);
	FUNC23(priv, ENETDMA_CFG_EN_MASK, ENETDMA_CFG_REG);
	FUNC23(priv, ENETDMA_CHANCFG_EN_MASK,
			FUNC1(priv->rx_chan));

	/* watch "mib counters about to overflow" interrupt */
	FUNC24(priv, ENET_IR_MIB, ENET_IR_REG);
	FUNC24(priv, ENET_IR_MIB, ENET_IRMASK_REG);

	/* watch "packet transferred" interrupt in rx and tx */
	FUNC23(priv, ENETDMA_IR_PKTDONE_MASK,
			FUNC5(priv->rx_chan));
	FUNC23(priv, ENETDMA_IR_PKTDONE_MASK,
			FUNC5(priv->tx_chan));

	/* make sure we enable napi before rx interrupt  */
	FUNC31(&priv->napi);

	FUNC23(priv, ENETDMA_IR_PKTDONE_MASK,
			FUNC4(priv->rx_chan));
	FUNC23(priv, ENETDMA_IR_PKTDONE_MASK,
			FUNC4(priv->tx_chan));

	if (priv->has_phy)
		FUNC36(priv->phydev);
	else
		FUNC15(dev);

	FUNC33(dev);
	return 0;

out:
	for (i = 0; i < priv->rx_ring_size; i++) {
		struct bcm_enet_desc *desc;

		if (!priv->rx_skb[i])
			continue;

		desc = &priv->rx_desc_cpu[i];
		FUNC22(kdev, desc->address, priv->rx_skb_size,
				 DMA_FROM_DEVICE);
		FUNC27(priv->rx_skb[i]);
	}
	FUNC26(priv->rx_skb);

out_free_tx_skb:
	FUNC26(priv->tx_skb);

out_free_tx_ring:
	FUNC21(kdev, priv->tx_desc_alloc_size,
			  priv->tx_desc_cpu, priv->tx_desc_dma);

out_free_rx_ring:
	FUNC21(kdev, priv->rx_desc_alloc_size,
			  priv->rx_desc_cpu, priv->rx_desc_dma);

out_freeirq_tx:
	FUNC25(priv->irq_tx, dev);

out_freeirq_rx:
	FUNC25(priv->irq_rx, dev);

out_freeirq:
	FUNC25(dev->irq, dev);

out_phy_disconnect:
	FUNC35(priv->phydev);

	return ret;
}