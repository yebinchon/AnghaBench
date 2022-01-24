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
typedef  unsigned int u32 ;
struct imx_dma_channel {int hw_chaining; unsigned int ccr_from_device; unsigned int ccr_to_device; } ;

/* Variables and functions */
 unsigned int CCR_REN ; 
 scalar_t__ DMA_BASE ; 
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 struct imx_dma_channel* imx_dma_channels ; 
 int /*<<< orphan*/  FUNC2 (struct imx_dma_channel*) ; 

int
FUNC3(int channel, unsigned int config_port,
	unsigned int config_mem, unsigned int dmareq, int hw_chaining)
{
	struct imx_dma_channel *imxdma = &imx_dma_channels[channel];
	u32 dreq = 0;

	imxdma->hw_chaining = 0;

	if (hw_chaining) {
		imxdma->hw_chaining = 1;
		if (!FUNC2(imxdma))
			return -EINVAL;
	}

	if (dmareq)
		dreq = CCR_REN;

	imxdma->ccr_from_device = config_port | (config_mem << 2) | dreq;
	imxdma->ccr_to_device = config_mem | (config_port << 2) | dreq;

	FUNC1(dmareq, DMA_BASE + FUNC0(channel));

	return 0;
}