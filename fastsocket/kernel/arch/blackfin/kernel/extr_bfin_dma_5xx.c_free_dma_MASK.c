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
struct TYPE_2__ {scalar_t__ chan_status; int /*<<< orphan*/  dmalock; int /*<<< orphan*/  data; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMA_CHANNEL_FREE ; 
 unsigned int MAX_DMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__* dma_ch ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(unsigned int channel)
{
	FUNC6("freedma() : BEGIN \n");
	FUNC0(channel >= MAX_DMA_CHANNELS ||
			dma_ch[channel].chan_status == DMA_CHANNEL_FREE);

	/* Halt the DMA */
	FUNC2(channel);
	FUNC1(channel);

	if (dma_ch[channel].irq)
		FUNC3(dma_ch[channel].irq, dma_ch[channel].data);

	/* Clear the DMA Variable in the Channel */
	FUNC4(&(dma_ch[channel].dmalock));
	dma_ch[channel].chan_status = DMA_CHANNEL_FREE;
	FUNC5(&(dma_ch[channel].dmalock));

	FUNC6("freedma() : END \n");
}