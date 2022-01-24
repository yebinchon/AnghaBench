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
struct dma_channel {int flags; int sar; size_t chan; int dar; int count; } ;

/* Variables and functions */
 scalar_t__ DAR ; 
 int DMA_CONFIGURED ; 
 size_t PVR2_CASCADE_CHAN ; 
 scalar_t__ SAR ; 
 scalar_t__ TCR ; 
 int FUNC0 (struct dma_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__* dma_base_addr ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dma_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_channel*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct dma_channel *chan)
{
	/*
	 * If we haven't pre-configured the channel with special flags, use
	 * the defaults.
	 */
	if (FUNC6(!(chan->flags & DMA_CONFIGURED)))
		FUNC3(chan, 0);

	FUNC4(chan);

	/*
	 * Single-address mode usage note!
	 *
	 * It's important that we don't accidentally write any value to SAR/DAR
	 * (this includes 0) that hasn't been directly specified by the user if
	 * we're in single-address mode.
	 *
	 * In this case, only one address can be defined, anything else will
	 * result in a DMA address error interrupt (at least on the SH-4),
	 * which will subsequently halt the transfer.
	 *
	 * Channel 2 on the Dreamcast is a special case, as this is used for
	 * cascading to the PVR2 DMAC. In this case, we still need to write
	 * SAR and DAR, regardless of value, in order for cascading to work.
	 */
	if (chan->sar || (FUNC2() &&
			  chan->chan == PVR2_CASCADE_CHAN))
		FUNC1(chan->sar, (dma_base_addr[chan->chan]+SAR));
	if (chan->dar || (FUNC2() &&
			  chan->chan == PVR2_CASCADE_CHAN))
		FUNC1(chan->dar, (dma_base_addr[chan->chan] + DAR));

	FUNC1(chan->count >> FUNC0(chan),
		(dma_base_addr[chan->chan] + TCR));

	FUNC5(chan);

	return 0;
}