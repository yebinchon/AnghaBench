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
typedef  int u32 ;
struct TYPE_2__ {int dev_id; int next_lch; int /*<<< orphan*/ * callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  IRQENABLE_L0 ; 
 int /*<<< orphan*/  IRQSTATUS_L0 ; 
 int OMAP2_DMA_CSR_CLEAR_MASK ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__* dma_chan ; 
 int /*<<< orphan*/  dma_chan_lock ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(int lch)
{
	unsigned long flags;

	if (dma_chan[lch].dev_id == -1) {
		FUNC8("omap_dma: trying to free unallocated DMA channel %d\n",
		       lch);
		return;
	}

	if (FUNC3()) {
		/* Disable all DMA interrupts for the channel. */
		FUNC6(0, FUNC1(lch));
		/* Make sure the DMA transfer is stopped. */
		FUNC6(0, FUNC0(lch));
	}

	if (FUNC4()) {
		u32 val;

		FUNC9(&dma_chan_lock, flags);
		/* Disable interrupts */
		val = FUNC5(IRQENABLE_L0);
		val &= ~(1 << lch);
		FUNC6(val, IRQENABLE_L0);
		FUNC10(&dma_chan_lock, flags);

		/* Clear the CSR register and IRQ status register */
		FUNC6(OMAP2_DMA_CSR_CLEAR_MASK, FUNC2(lch));
		FUNC6(1 << lch, IRQSTATUS_L0);

		/* Disable all DMA interrupts for the channel. */
		FUNC6(0, FUNC1(lch));

		/* Make sure the DMA transfer is stopped. */
		FUNC6(0, FUNC0(lch));
		FUNC7(lch);
	}

	FUNC9(&dma_chan_lock, flags);
	dma_chan[lch].dev_id = -1;
	dma_chan[lch].next_lch = -1;
	dma_chan[lch].callback = NULL;
	FUNC10(&dma_chan_lock, flags);
}