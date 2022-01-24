#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  rx_ring3; int /*<<< orphan*/  rx_ring0; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue3; int /*<<< orphan*/  queue0; } ;
struct TYPE_5__ {int /*<<< orphan*/  txerr_cnt; } ;
struct b43legacy_wldev {int* dma_reason; int irq_reason; TYPE_4__* wl; int /*<<< orphan*/  irq_mask; TYPE_3__ dma; TYPE_2__ pio; TYPE_1__ phy; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int B43legacy_DMAIRQ_FATALMASK ; 
 int B43legacy_DMAIRQ_NONFATALMASK ; 
 int B43legacy_DMAIRQ_RX_DONE ; 
 int B43legacy_IRQ_ATIM_END ; 
 int B43legacy_IRQ_BEACON ; 
 int B43legacy_IRQ_MAC_TXERR ; 
 int B43legacy_IRQ_NOISESAMPLE_OK ; 
 int B43legacy_IRQ_PHY_TXERR ; 
 int B43legacy_IRQ_PMQ ; 
 int B43legacy_IRQ_TBTT_INDI ; 
 int B43legacy_IRQ_TXFIFO_FLUSH_OK ; 
 int B43legacy_IRQ_TX_OK ; 
 int B43legacy_IRQ_UCODE_DEBUG ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_MASK ; 
 scalar_t__ B43legacy_STAT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct b43legacy_wldev*) ; 
 scalar_t__ FUNC7 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC12 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC13 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC14 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC15 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC16 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static void FUNC22(struct b43legacy_wldev *dev)
{
	u32 reason;
	u32 dma_reason[FUNC0(dev->dma_reason)];
	u32 merged_dma_reason = 0;
	int i;
	unsigned long flags;

	FUNC19(&dev->wl->irq_lock, flags);

	FUNC1(FUNC6(dev) <
			  B43legacy_STAT_INITIALIZED);

	reason = dev->irq_reason;
	for (i = 0; i < FUNC0(dma_reason); i++) {
		dma_reason[i] = dev->dma_reason[i];
		merged_dma_reason |= dma_reason[i];
	}

	if (FUNC21(reason & B43legacy_IRQ_MAC_TXERR))
		FUNC9(dev->wl, "MAC transmission error\n");

	if (FUNC21(reason & B43legacy_IRQ_PHY_TXERR)) {
		FUNC9(dev->wl, "PHY transmission error\n");
		FUNC18();
		if (FUNC21(FUNC2(&dev->phy.txerr_cnt))) {
			FUNC9(dev->wl, "Too many PHY TX errors, "
					      "restarting the controller\n");
			FUNC3(dev, "PHY TX errors");
		}
	}

	if (FUNC21(merged_dma_reason & (B43legacy_DMAIRQ_FATALMASK |
					  B43legacy_DMAIRQ_NONFATALMASK))) {
		if (merged_dma_reason & B43legacy_DMAIRQ_FATALMASK) {
			FUNC9(dev->wl, "Fatal DMA error: "
			       "0x%08X, 0x%08X, 0x%08X, "
			       "0x%08X, 0x%08X, 0x%08X\n",
			       dma_reason[0], dma_reason[1],
			       dma_reason[2], dma_reason[3],
			       dma_reason[4], dma_reason[5]);
			FUNC3(dev, "DMA error");
			FUNC17();
			FUNC20(&dev->wl->irq_lock, flags);
			return;
		}
		if (merged_dma_reason & B43legacy_DMAIRQ_NONFATALMASK)
			FUNC9(dev->wl, "DMA error: "
			       "0x%08X, 0x%08X, 0x%08X, "
			       "0x%08X, 0x%08X, 0x%08X\n",
			       dma_reason[0], dma_reason[1],
			       dma_reason[2], dma_reason[3],
			       dma_reason[4], dma_reason[5]);
	}

	if (FUNC21(reason & B43legacy_IRQ_UCODE_DEBUG))
		FUNC16(dev);
	if (reason & B43legacy_IRQ_TBTT_INDI)
		FUNC14(dev);
	if (reason & B43legacy_IRQ_ATIM_END)
		FUNC10(dev);
	if (reason & B43legacy_IRQ_BEACON)
		FUNC11(dev);
	if (reason & B43legacy_IRQ_PMQ)
		FUNC13(dev);
	if (reason & B43legacy_IRQ_TXFIFO_FLUSH_OK)
		;/*TODO*/
	if (reason & B43legacy_IRQ_NOISESAMPLE_OK)
		FUNC12(dev);

	/* Check the DMA reason registers for received data. */
	if (dma_reason[0] & B43legacy_DMAIRQ_RX_DONE) {
		if (FUNC7(dev))
			FUNC5(dev->pio.queue0);
		else
			FUNC4(dev->dma.rx_ring0);
	}
	FUNC1(dma_reason[1] & B43legacy_DMAIRQ_RX_DONE);
	FUNC1(dma_reason[2] & B43legacy_DMAIRQ_RX_DONE);
	if (dma_reason[3] & B43legacy_DMAIRQ_RX_DONE) {
		if (FUNC7(dev))
			FUNC5(dev->pio.queue3);
		else
			FUNC4(dev->dma.rx_ring3);
	}
	FUNC1(dma_reason[4] & B43legacy_DMAIRQ_RX_DONE);
	FUNC1(dma_reason[5] & B43legacy_DMAIRQ_RX_DONE);

	if (reason & B43legacy_IRQ_TX_OK)
		FUNC15(dev);

	FUNC8(dev, B43legacy_MMIO_GEN_IRQ_MASK, dev->irq_mask);
	FUNC17();
	FUNC20(&dev->wl->irq_lock, flags);
}