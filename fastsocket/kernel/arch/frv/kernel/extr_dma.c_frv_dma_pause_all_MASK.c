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
struct frv_dma_channel {int flags; unsigned long ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCTR ; 
 int /*<<< orphan*/  CSTR ; 
 unsigned long DMAC_CCTRx_ACT ; 
 unsigned long DMAC_CSTRx_BUSY ; 
 unsigned long DMAC_CSTRx_FED ; 
 int FRV_DMA_FLAGS_INUSE ; 
 int FRV_DMA_FLAGS_PAUSED ; 
 int FRV_DMA_NCHANS ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct frv_dma_channel* frv_dma_channels ; 
 int /*<<< orphan*/  frv_dma_channels_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	struct frv_dma_channel *channel;
	unsigned long ioaddr;
	unsigned long cstr, cctr;
	int dma;

	FUNC3(&frv_dma_channels_lock);

	for (dma = FRV_DMA_NCHANS - 1; dma >= 0; dma--) {
		channel = &frv_dma_channels[dma];

		if (!(channel->flags & FRV_DMA_FLAGS_INUSE))
			continue;

		ioaddr = channel->ioaddr;
		cctr = FUNC0(ioaddr, CCTR);
		if (cctr & DMAC_CCTRx_ACT) {
			cctr &= ~DMAC_CCTRx_ACT;
			FUNC1(ioaddr, CCTR, cctr);

			do {
				cstr = FUNC0(ioaddr, CSTR);
			} while (cstr & DMAC_CSTRx_BUSY);

			if (cstr & DMAC_CSTRx_FED)
				channel->flags |= FRV_DMA_FLAGS_PAUSED;
			FUNC2(dma);
		}
	}

}