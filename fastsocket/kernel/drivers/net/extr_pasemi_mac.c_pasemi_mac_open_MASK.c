#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct pasemi_mac {scalar_t__ type; TYPE_5__* tx; int /*<<< orphan*/  napi; scalar_t__ phydev; TYPE_5__* rx; TYPE_1__* pdev; int /*<<< orphan*/  rx_irq_name; int /*<<< orphan*/  tx_irq_name; int /*<<< orphan*/  dma_if; int /*<<< orphan*/  num_cs; } ;
struct net_device {int mtu; char* name; } ;
struct TYPE_17__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_16__ {int /*<<< orphan*/  chno; } ;
struct TYPE_12__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  chno; } ;
struct TYPE_15__ {TYPE_2__ chan; TYPE_8__ clean_timer; } ;
struct TYPE_14__ {TYPE_7__ chan; } ;
struct TYPE_13__ {TYPE_7__ chan; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 scalar_t__ MAC_TYPE_GMAC ; 
 int PAS_DMA_RXCHAN_CCMDSTA_DT ; 
 int PAS_DMA_RXCHAN_CCMDSTA_DU ; 
 int PAS_DMA_RXCHAN_CCMDSTA_FD ; 
 int PAS_DMA_RXCHAN_CCMDSTA_OD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAS_DMA_RXINT_RCMDSTA_BP ; 
 int PAS_DMA_RXINT_RCMDSTA_BT ; 
 int PAS_DMA_RXINT_RCMDSTA_DROPS_M ; 
 int PAS_DMA_RXINT_RCMDSTA_EN ; 
 int PAS_DMA_RXINT_RCMDSTA_OO ; 
 int PAS_DMA_TXCHAN_TCMDSTA_DA ; 
 int PAS_DMA_TXCHAN_TCMDSTA_DB ; 
 int PAS_DMA_TXCHAN_TCMDSTA_DE ; 
 int PAS_DMA_TXCHAN_TCMDSTA_SZ ; 
 int /*<<< orphan*/  PAS_IOB_DMA_COM_TIMEOUTCFG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  PAS_MAC_CFG_PCFG ; 
 unsigned int PAS_MAC_CFG_PCFG_CE ; 
 unsigned int PAS_MAC_CFG_PCFG_PR ; 
 unsigned int PAS_MAC_CFG_PCFG_S1 ; 
 unsigned int PAS_MAC_CFG_PCFG_SPD_10G ; 
 unsigned int PAS_MAC_CFG_PCFG_SPD_1G ; 
 unsigned int PAS_MAC_CFG_PCFG_TSR_10G ; 
 unsigned int PAS_MAC_CFG_PCFG_TSR_1G ; 
 int /*<<< orphan*/  PAS_MAC_CFG_TXP ; 
 unsigned int FUNC7 (int) ; 
 unsigned int PAS_MAC_CFG_TXP_FCE ; 
 unsigned int FUNC8 (int) ; 
 unsigned int FUNC9 (int) ; 
 unsigned int FUNC10 (int) ; 
 unsigned int FUNC11 (int) ; 
 int /*<<< orphan*/  PAS_MAC_IPC_CHNL ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_8__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 struct pasemi_mac* FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC27 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC28 (struct pasemi_mac*) ; 
 int FUNC29 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC32 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  pasemi_mac_rx_intr ; 
 int /*<<< orphan*/  FUNC33 (struct pasemi_mac*) ; 
 int FUNC34 (struct net_device*) ; 
 TYPE_5__* FUNC35 (struct net_device*) ; 
 int /*<<< orphan*/  pasemi_mac_tx_intr ; 
 int /*<<< orphan*/  pasemi_mac_tx_timer ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 
 int FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_4__* FUNC38 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int,char*,char*) ; 
 TYPE_3__* FUNC40 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct pasemi_mac*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC44(struct net_device *dev)
{
	struct pasemi_mac *mac = FUNC22(dev);
	unsigned int flags;
	int i, ret;

	flags = PAS_MAC_CFG_TXP_FCE | FUNC8(3) |
		FUNC9(3) | FUNC7(0xf) |
		FUNC11(8) | FUNC10(12);

	FUNC43(mac, PAS_MAC_CFG_TXP, flags);

	ret = FUNC34(dev);
	if (ret)
		goto out_rx_resources;

	mac->tx = FUNC35(dev);

	if (!mac->tx)
		goto out_tx_ring;

	/* We might already have allocated rings in case mtu was changed
	 * before interface was brought up.
	 */
	if (dev->mtu > 1500 && !mac->num_cs) {
		FUNC33(mac);
		if (!mac->num_cs)
			goto out_tx_ring;
	}

	/* Zero out rmon counters */
	for (i = 0; i < 32; i++)
		FUNC43(mac, FUNC14(i), 0);

	/* 0x3ff with 33MHz clock is about 31us */
	FUNC42(PAS_IOB_DMA_COM_TIMEOUTCFG,
		      FUNC2(0x3ff));

	FUNC42(FUNC3(mac->rx->chan.chno),
		      FUNC4(256));

	FUNC42(FUNC5(mac->tx->chan.chno),
		      FUNC6(32));

	FUNC43(mac, PAS_MAC_IPC_CHNL,
		      FUNC13(mac->rx->chan.chno) |
		      FUNC12(mac->rx->chan.chno));

	/* enable rx if */
	FUNC41(FUNC1(mac->dma_if),
		      PAS_DMA_RXINT_RCMDSTA_EN |
		      PAS_DMA_RXINT_RCMDSTA_DROPS_M |
		      PAS_DMA_RXINT_RCMDSTA_BP |
		      PAS_DMA_RXINT_RCMDSTA_OO |
		      PAS_DMA_RXINT_RCMDSTA_BT);

	/* enable rx channel */
	FUNC25(&FUNC38(mac)->chan, PAS_DMA_RXCHAN_CCMDSTA_DU |
						   PAS_DMA_RXCHAN_CCMDSTA_OD |
						   PAS_DMA_RXCHAN_CCMDSTA_FD |
						   PAS_DMA_RXCHAN_CCMDSTA_DT);

	/* enable tx channel */
	FUNC25(&FUNC40(mac)->chan, PAS_DMA_TXCHAN_TCMDSTA_SZ |
						   PAS_DMA_TXCHAN_TCMDSTA_DB |
						   PAS_DMA_TXCHAN_TCMDSTA_DE |
						   PAS_DMA_TXCHAN_TCMDSTA_DA);

	FUNC30(dev, RX_RING_SIZE);

	FUNC41(FUNC0(FUNC38(mac)->chan.chno),
		      RX_RING_SIZE>>1);

	/* Clear out any residual packet count state from firmware */
	FUNC31(mac);
	FUNC32(mac);

	flags = PAS_MAC_CFG_PCFG_S1 | PAS_MAC_CFG_PCFG_PR | PAS_MAC_CFG_PCFG_CE;

	if (mac->type == MAC_TYPE_GMAC)
		flags |= PAS_MAC_CFG_PCFG_TSR_1G | PAS_MAC_CFG_PCFG_SPD_1G;
	else
		flags |= PAS_MAC_CFG_PCFG_TSR_10G | PAS_MAC_CFG_PCFG_SPD_10G;

	/* Enable interface in MAC */
	FUNC43(mac, PAS_MAC_CFG_PCFG, flags);

	ret = FUNC29(dev);
	if (ret) {
		/* Since we won't get link notification, just enable RX */
		FUNC28(mac);
		if (mac->type == MAC_TYPE_GMAC) {
			/* Warn for missing PHY on SGMII (1Gig) ports */
			FUNC17(&mac->pdev->dev,
				 "PHY init failed: %d.\n", ret);
			FUNC17(&mac->pdev->dev,
				 "Defaulting to 1Gbit full duplex\n");
		}
	}

	FUNC23(dev);
	FUNC21(&mac->napi);

	FUNC39(mac->tx_irq_name, sizeof(mac->tx_irq_name), "%s tx",
		 dev->name);

	ret = FUNC37(mac->tx->chan.irq, &pasemi_mac_tx_intr, IRQF_DISABLED,
			  mac->tx_irq_name, mac->tx);
	if (ret) {
		FUNC16(&mac->pdev->dev, "request_irq of irq %d failed: %d\n",
			mac->tx->chan.irq, ret);
		goto out_tx_int;
	}

	FUNC39(mac->rx_irq_name, sizeof(mac->rx_irq_name), "%s rx",
		 dev->name);

	ret = FUNC37(mac->rx->chan.irq, &pasemi_mac_rx_intr, IRQF_DISABLED,
			  mac->rx_irq_name, mac->rx);
	if (ret) {
		FUNC16(&mac->pdev->dev, "request_irq of irq %d failed: %d\n",
			mac->rx->chan.irq, ret);
		goto out_rx_int;
	}

	if (mac->phydev)
		FUNC36(mac->phydev);

	FUNC19(&mac->tx->clean_timer);
	mac->tx->clean_timer.function = pasemi_mac_tx_timer;
	mac->tx->clean_timer.data = (unsigned long)mac->tx;
	mac->tx->clean_timer.expires = jiffies+HZ;
	FUNC15(&mac->tx->clean_timer);

	return 0;

out_rx_int:
	FUNC18(mac->tx->chan.irq, mac->tx);
out_tx_int:
	FUNC20(&mac->napi);
	FUNC24(dev);
out_tx_ring:
	if (mac->tx)
		FUNC27(mac);
	FUNC26(mac);
out_rx_resources:

	return ret;
}