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
typedef  scalar_t__ u32 ;
struct dw_dma_slave {scalar_t__ dma_dev; scalar_t__ cfg_lo; scalar_t__ cfg_hi; } ;
struct dw_dma_chan {int mask; int completed; int descs_allocated; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {scalar_t__ dev; } ;
struct dw_dma {TYPE_1__ dma; } ;
struct TYPE_5__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_submit; } ;
struct dw_desc {int /*<<< orphan*/  lli; TYPE_2__ txd; int /*<<< orphan*/  tx_list; } ;
struct dma_chan {int cookie; struct dw_dma_slave* private; int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int /*<<< orphan*/  ERROR; int /*<<< orphan*/  BLOCK; int /*<<< orphan*/  XFER; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CFG_HI ; 
 int /*<<< orphan*/  CFG_LO ; 
 int /*<<< orphan*/  CH_EN ; 
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ DWC_CFGH_FIFO_MODE ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__ MASK ; 
 int NR_DESCS_PER_CHANNEL ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_dma_chan*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dw_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dw_dma_chan*,struct dw_desc*) ; 
 int /*<<< orphan*/  dwc_tx_submit ; 
 struct dw_desc* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct dw_dma* FUNC16 (int /*<<< orphan*/ ) ; 
 struct dw_dma_chan* FUNC17 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC18(struct dma_chan *chan)
{
	struct dw_dma_chan	*dwc = FUNC17(chan);
	struct dw_dma		*dw = FUNC16(chan->device);
	struct dw_desc		*desc;
	struct dw_dma_slave	*dws;
	int			i;
	u32			cfghi;
	u32			cfglo;

	FUNC8(FUNC2(chan), "alloc_chan_resources\n");

	/* ASSERT:  channel is idle */
	if (FUNC11(dw, CH_EN) & dwc->mask) {
		FUNC6(FUNC2(chan), "DMA channel not idle?\n");
		return -EIO;
	}

	dwc->completed = chan->cookie = 1;

	cfghi = DWC_CFGH_FIFO_MODE;
	cfglo = 0;

	dws = chan->private;
	if (dws) {
		/*
		 * We need controller-specific data to set up slave
		 * transfers.
		 */
		FUNC0(!dws->dma_dev || dws->dma_dev != dw->dma.dev);

		cfghi = dws->cfg_hi;
		cfglo = dws->cfg_lo;
	}
	FUNC5(dwc, CFG_LO, cfglo);
	FUNC5(dwc, CFG_HI, cfghi);

	/*
	 * NOTE: some controllers may have additional features that we
	 * need to initialize here, like "scatter-gather" (which
	 * doesn't mean what you think it means), and status writeback.
	 */

	FUNC14(&dwc->lock);
	i = dwc->descs_allocated;
	while (dwc->descs_allocated < NR_DESCS_PER_CHANNEL) {
		FUNC15(&dwc->lock);

		desc = FUNC13(sizeof(struct dw_desc), GFP_KERNEL);
		if (!desc) {
			FUNC7(FUNC2(chan),
				"only allocated %d descriptors\n", i);
			FUNC14(&dwc->lock);
			break;
		}

		FUNC1(&desc->tx_list);
		FUNC9(&desc->txd, chan);
		desc->txd.tx_submit = dwc_tx_submit;
		desc->txd.flags = DMA_CTRL_ACK;
		desc->txd.phys = FUNC10(FUNC3(chan), &desc->lli,
				sizeof(desc->lli), DMA_TO_DEVICE);
		FUNC12(dwc, desc);

		FUNC14(&dwc->lock);
		i = ++dwc->descs_allocated;
	}

	/* Enable interrupts */
	FUNC4(dw, MASK.XFER, dwc->mask);
	FUNC4(dw, MASK.BLOCK, dwc->mask);
	FUNC4(dw, MASK.ERROR, dwc->mask);

	FUNC15(&dwc->lock);

	FUNC6(FUNC2(chan),
		"alloc_chan_resources allocated %d descriptors\n", i);

	return i;
}