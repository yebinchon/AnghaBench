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
typedef  int u32 ;
struct smsc9420_pdata {int software_irq_signal; int /*<<< orphan*/  int_lock; int /*<<< orphan*/  napi; int /*<<< orphan*/  phy_dev; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUS_CFG ; 
 int BUS_CFG_RXTXWEIGHT_4_1 ; 
 int /*<<< orphan*/  BUS_MODE ; 
 int BUS_MODE_DBO_ ; 
 int BUS_MODE_DMA_BURST_LENGTH_16 ; 
 int /*<<< orphan*/  DMAC_CONTROL ; 
 int DMAC_CONTROL_OSF_ ; 
 int DMAC_CONTROL_SF_ ; 
 int DMAC_CONTROL_SR_ ; 
 int DMAC_CONTROL_ST_ ; 
 int /*<<< orphan*/  DMAC_INTR_ENA ; 
 int DMAC_INTR_ENA_NIS_ ; 
 int DMAC_INTR_ENA_RX_ ; 
 int DMAC_INTR_ENA_TX_ ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EADDRNOTAVAIL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIO_CFG ; 
 int GPIO_CFG_LED_1_ ; 
 int GPIO_CFG_LED_2_ ; 
 int GPIO_CFG_LED_3_ ; 
 int /*<<< orphan*/  IFUP ; 
 int /*<<< orphan*/  INT_CFG ; 
 int INT_CFG_INT_DEAS_MASK ; 
 int INT_CFG_IRQ_EN_ ; 
 int /*<<< orphan*/  INT_CTL ; 
 int INT_CTL_SW_INT_EN_ ; 
 int INT_DEAS_TIME ; 
 int /*<<< orphan*/  INT_STAT ; 
 int IRQF_DISABLED ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_RXEN_ ; 
 int MAC_CR_TXEN_ ; 
 int /*<<< orphan*/  RX_POLL_DEMAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct smsc9420_pdata* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct smsc9420_pdata*) ; 
 int FUNC10 (struct smsc9420_pdata*) ; 
 int FUNC11 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC14 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  smsc9420_isr ; 
 int FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct smsc9420_pdata*) ; 
 int FUNC17 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC24(struct net_device *dev)
{
	struct smsc9420_pdata *pd;
	u32 bus_mode, mac_cr, dmac_control, int_cfg, dma_intr_ena, int_ctl;
	unsigned long flags;
	int result = 0, timeout;

	FUNC0(!dev);
	pd = FUNC5(dev);
	FUNC0(!pd);

	if (!FUNC2(dev->dev_addr)) {
		FUNC21(IFUP, "dev_addr is not a valid MAC address");
		result = -EADDRNOTAVAIL;
		goto out_0;
	}

	FUNC6(dev);

	/* disable, mask and acknowlege all interrupts */
	FUNC22(&pd->int_lock, flags);
	int_cfg = FUNC17(pd, INT_CFG) & (~INT_CFG_IRQ_EN_);
	FUNC18(pd, INT_CFG, int_cfg);
	FUNC18(pd, INT_CTL, 0);
	FUNC23(&pd->int_lock, flags);
	FUNC18(pd, DMAC_INTR_ENA, 0);
	FUNC18(pd, INT_STAT, 0xFFFFFFFF);
	FUNC16(pd);

	if (FUNC9(dev->irq, smsc9420_isr, IRQF_SHARED | IRQF_DISABLED,
			DRV_NAME, pd)) {
		FUNC21(IFUP, "Unable to use IRQ = %d", dev->irq);
		result = -ENODEV;
		goto out_0;
	}

	FUNC12(pd);

	/* make sure MAC_CR is sane */
	FUNC18(pd, MAC_CR, 0);

	FUNC19(dev);

	/* Configure GPIO pins to drive LEDs */
	FUNC18(pd, GPIO_CFG,
		(GPIO_CFG_LED_3_ | GPIO_CFG_LED_2_ | GPIO_CFG_LED_1_));

	bus_mode = BUS_MODE_DMA_BURST_LENGTH_16;

#ifdef __BIG_ENDIAN
	bus_mode |= BUS_MODE_DBO_;
#endif

	FUNC18(pd, BUS_MODE, bus_mode);

	FUNC16(pd);

	/* set bus master bridge arbitration priority for Rx and TX DMA */
	FUNC18(pd, BUS_CFG, BUS_CFG_RXTXWEIGHT_4_1);

	FUNC18(pd, DMAC_CONTROL,
		(DMAC_CONTROL_SF_ | DMAC_CONTROL_OSF_));

	FUNC16(pd);

	/* test the IRQ connection to the ISR */
	FUNC20(IFUP, "Testing ISR using IRQ %d", dev->irq);
	pd->software_irq_signal = false;

	FUNC22(&pd->int_lock, flags);
	/* configure interrupt deassertion timer and enable interrupts */
	int_cfg = FUNC17(pd, INT_CFG) | INT_CFG_IRQ_EN_;
	int_cfg &= ~(INT_CFG_INT_DEAS_MASK);
	int_cfg |= (INT_DEAS_TIME & INT_CFG_INT_DEAS_MASK);
	FUNC18(pd, INT_CFG, int_cfg);

	/* unmask software interrupt */
	int_ctl = FUNC17(pd, INT_CTL) | INT_CTL_SW_INT_EN_;
	FUNC18(pd, INT_CTL, int_ctl);
	FUNC23(&pd->int_lock, flags);
	FUNC16(pd);

	timeout = 1000;
	while (timeout--) {
		if (pd->software_irq_signal)
			break;
		FUNC3(1);
	}

	/* disable interrupts */
	FUNC22(&pd->int_lock, flags);
	int_cfg = FUNC17(pd, INT_CFG) & (~INT_CFG_IRQ_EN_);
	FUNC18(pd, INT_CFG, int_cfg);
	FUNC23(&pd->int_lock, flags);

	if (!pd->software_irq_signal) {
		FUNC21(IFUP, "ISR failed signaling test");
		result = -ENODEV;
		goto out_free_irq_1;
	}

	FUNC20(IFUP, "ISR passed test using IRQ %d", dev->irq);

	result = FUNC11(pd);
	if (result) {
		FUNC21(IFUP, "Failed to Initialize tx dma ring");
		result = -ENOMEM;
		goto out_free_irq_1;
	}

	result = FUNC10(pd);
	if (result) {
		FUNC21(IFUP, "Failed to Initialize rx dma ring");
		result = -ENOMEM;
		goto out_free_tx_ring_2;
	}

	result = FUNC15(dev);
	if (result) {
		FUNC21(IFUP, "Failed to initialize Phy");
		result = -ENODEV;
		goto out_free_rx_ring_3;
	}

	/* Bring the PHY up */
	FUNC8(pd->phy_dev);

	FUNC4(&pd->napi);

	/* start tx and rx */
	mac_cr = FUNC17(pd, MAC_CR) | MAC_CR_TXEN_ | MAC_CR_RXEN_;
	FUNC18(pd, MAC_CR, mac_cr);

	dmac_control = FUNC17(pd, DMAC_CONTROL);
	dmac_control |= DMAC_CONTROL_ST_ | DMAC_CONTROL_SR_;
	FUNC18(pd, DMAC_CONTROL, dmac_control);
	FUNC16(pd);

	dma_intr_ena = FUNC17(pd, DMAC_INTR_ENA);
	dma_intr_ena |=
		(DMAC_INTR_ENA_TX_ | DMAC_INTR_ENA_RX_ | DMAC_INTR_ENA_NIS_);
	FUNC18(pd, DMAC_INTR_ENA, dma_intr_ena);
	FUNC16(pd);

	FUNC7(dev);

	FUNC18(pd, RX_POLL_DEMAND, 1);

	/* enable interrupts */
	FUNC22(&pd->int_lock, flags);
	int_cfg = FUNC17(pd, INT_CFG) | INT_CFG_IRQ_EN_;
	FUNC18(pd, INT_CFG, int_cfg);
	FUNC23(&pd->int_lock, flags);

	return 0;

out_free_rx_ring_3:
	FUNC13(pd);
out_free_tx_ring_2:
	FUNC14(pd);
out_free_irq_1:
	FUNC1(dev->irq, pd);
out_0:
	return result;
}