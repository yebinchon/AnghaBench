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
typedef  int /*<<< orphan*/  u32 ;
struct dma_channel {size_t chan; int flags; } ;

/* Variables and functions */
 scalar_t__ CHCR ; 
 int /*<<< orphan*/  CHCR_DE ; 
 int /*<<< orphan*/  CHCR_IE ; 
 int DMA_TEI_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* dma_base_addr ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (size_t) ; 

__attribute__((used)) static void FUNC4(struct dma_channel *chan)
{
	int irq;
	u32 chcr;

	chcr = FUNC0(dma_base_addr[chan->chan] + CHCR);
	chcr |= CHCR_DE;

	if (chan->flags & DMA_TEI_CAPABLE)
		chcr |= CHCR_IE;

	FUNC1(chcr, (dma_base_addr[chan->chan] + CHCR));

	if (chan->flags & DMA_TEI_CAPABLE) {
		irq = FUNC3(chan->chan);
		FUNC2(irq);
	}
}