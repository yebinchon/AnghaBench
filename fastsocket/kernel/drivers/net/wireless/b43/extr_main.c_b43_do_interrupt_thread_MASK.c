#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  rx_ring; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  txerr_cnt; } ;
struct b43_wldev {int* dma_reason; int irq_reason; int use_pio; int* irq_bit_count; int /*<<< orphan*/  irq_count; int /*<<< orphan*/  irq_mask; TYPE_3__ dma; TYPE_2__ pio; int /*<<< orphan*/  wl; TYPE_1__ phy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  B43_DBG_VERBOSESTATS ; 
 scalar_t__ B43_DEBUG ; 
 int B43_DMAIRQ_FATALMASK ; 
 int B43_DMAIRQ_RDESC_UFLOW ; 
 int B43_DMAIRQ_RX_DONE ; 
 int B43_IRQ_ATIM_END ; 
 int B43_IRQ_BEACON ; 
 int B43_IRQ_MAC_TXERR ; 
 int B43_IRQ_NOISESAMPLE_OK ; 
 int B43_IRQ_PHY_TXERR ; 
 int B43_IRQ_PMQ ; 
 int B43_IRQ_TBTT_INDI ; 
 int B43_IRQ_TXFIFO_FLUSH_OK ; 
 int B43_IRQ_TX_OK ; 
 int B43_IRQ_UCODE_DEBUG ; 
 int /*<<< orphan*/  B43_MMIO_GEN_IRQ_MASK ; 
 int /*<<< orphan*/  B43_PHY_TX_BADNESS_LIMIT ; 
 scalar_t__ B43_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,char*) ; 
 scalar_t__ FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct b43_wldev*) ; 
 scalar_t__ FUNC10 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC18 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC19 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC20 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static void FUNC23(struct b43_wldev *dev)
{
	u32 reason;
	u32 dma_reason[FUNC0(dev->dma_reason)];
	u32 merged_dma_reason = 0;
	int i;

	if (FUNC22(FUNC9(dev) != B43_STAT_STARTED))
		return;

	reason = dev->irq_reason;
	for (i = 0; i < FUNC0(dma_reason); i++) {
		dma_reason[i] = dev->dma_reason[i];
		merged_dma_reason |= dma_reason[i];
	}

	if (FUNC22(reason & B43_IRQ_MAC_TXERR))
		FUNC12(dev->wl, "MAC transmission error\n");

	if (FUNC22(reason & B43_IRQ_PHY_TXERR)) {
		FUNC12(dev->wl, "PHY transmission error\n");
		FUNC21();
		if (FUNC22(FUNC2(&dev->phy.txerr_cnt))) {
			FUNC3(&dev->phy.txerr_cnt,
				   B43_PHY_TX_BADNESS_LIMIT);
			FUNC12(dev->wl, "Too many PHY TX errors, "
					"restarting the controller\n");
			FUNC4(dev, "PHY TX errors");
		}
	}

	if (FUNC22(merged_dma_reason & (B43_DMAIRQ_FATALMASK))) {
		FUNC12(dev->wl,
			"Fatal DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\n",
			dma_reason[0], dma_reason[1],
			dma_reason[2], dma_reason[3],
			dma_reason[4], dma_reason[5]);
		FUNC12(dev->wl, "This device does not support DMA "
			       "on your system. It will now be switched to PIO.\n");
		/* Fall back to PIO transfers if we get fatal DMA errors! */
		dev->use_pio = true;
		FUNC4(dev, "DMA error");
		return;
	}

	if (FUNC22(reason & B43_IRQ_UCODE_DEBUG))
		FUNC20(dev);
	if (reason & B43_IRQ_TBTT_INDI)
		FUNC18(dev);
	if (reason & B43_IRQ_ATIM_END)
		FUNC14(dev);
	if (reason & B43_IRQ_BEACON)
		FUNC15(dev);
	if (reason & B43_IRQ_PMQ)
		FUNC17(dev);
	if (reason & B43_IRQ_TXFIFO_FLUSH_OK)
		;/* TODO */
	if (reason & B43_IRQ_NOISESAMPLE_OK)
		FUNC16(dev);

	/* Check the DMA reason registers for received data. */
	if (dma_reason[0] & B43_DMAIRQ_RDESC_UFLOW) {
		if (B43_DEBUG)
			FUNC13(dev->wl, "RX descriptor underrun\n");
		FUNC6(dev->dma.rx_ring);
	}
	if (dma_reason[0] & B43_DMAIRQ_RX_DONE) {
		if (FUNC10(dev))
			FUNC8(dev->pio.rx_queue);
		else
			FUNC7(dev->dma.rx_ring);
	}
	FUNC1(dma_reason[1] & B43_DMAIRQ_RX_DONE);
	FUNC1(dma_reason[2] & B43_DMAIRQ_RX_DONE);
	FUNC1(dma_reason[3] & B43_DMAIRQ_RX_DONE);
	FUNC1(dma_reason[4] & B43_DMAIRQ_RX_DONE);
	FUNC1(dma_reason[5] & B43_DMAIRQ_RX_DONE);

	if (reason & B43_IRQ_TX_OK)
		FUNC19(dev);

	/* Re-enable interrupts on the device by restoring the current interrupt mask. */
	FUNC11(dev, B43_MMIO_GEN_IRQ_MASK, dev->irq_mask);

#if B43_DEBUG
	if (b43_debug(dev, B43_DBG_VERBOSESTATS)) {
		dev->irq_count++;
		for (i = 0; i < ARRAY_SIZE(dev->irq_bit_count); i++) {
			if (reason & (1 << i))
				dev->irq_bit_count[i]++;
		}
	}
#endif
}