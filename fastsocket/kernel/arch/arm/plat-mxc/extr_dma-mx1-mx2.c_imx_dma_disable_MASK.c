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
struct imx_dma_channel {scalar_t__ in_use; int /*<<< orphan*/  watchdog; } ;

/* Variables and functions */
 int CCR_CEN ; 
 scalar_t__ DMA_BASE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ DMA_DIMR ; 
 scalar_t__ DMA_DISR ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct imx_dma_channel* imx_dma_channels ; 
 scalar_t__ FUNC4 (struct imx_dma_channel*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8(int channel)
{
	struct imx_dma_channel *imxdma = &imx_dma_channels[channel];
	unsigned long flags;

	FUNC7("imxdma%d: imx_dma_disable\n", channel);

	if (FUNC4(imxdma))
		FUNC3(&imxdma->watchdog);

	FUNC6(flags);
	FUNC2(FUNC1(DMA_BASE + DMA_DIMR) | (1 << channel),
		DMA_BASE + DMA_DIMR);
	FUNC2(FUNC1(DMA_BASE + FUNC0(channel)) & ~CCR_CEN,
		DMA_BASE + FUNC0(channel));
	FUNC2(1 << channel, DMA_BASE + DMA_DISR);
	imxdma->in_use = 0;
	FUNC5(flags);
}