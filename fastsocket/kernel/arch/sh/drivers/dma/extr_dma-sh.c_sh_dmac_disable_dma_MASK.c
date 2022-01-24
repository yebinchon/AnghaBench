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
struct dma_channel {int flags; size_t chan; } ;

/* Variables and functions */
 scalar_t__ CHCR ; 
 int CHCR_DE ; 
 int CHCR_IE ; 
 int CHCR_TE ; 
 int DMA_TEI_CAPABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__* dma_base_addr ; 
 int FUNC3 (size_t) ; 

__attribute__((used)) static void FUNC4(struct dma_channel *chan)
{
	int irq;
	u32 chcr;

	if (chan->flags & DMA_TEI_CAPABLE) {
		irq = FUNC3(chan->chan);
		FUNC2(irq);
	}

	chcr = FUNC0(dma_base_addr[chan->chan] + CHCR);
	chcr &= ~(CHCR_DE | CHCR_TE | CHCR_IE);
	FUNC1(chcr, (dma_base_addr[chan->chan] + CHCR));
}