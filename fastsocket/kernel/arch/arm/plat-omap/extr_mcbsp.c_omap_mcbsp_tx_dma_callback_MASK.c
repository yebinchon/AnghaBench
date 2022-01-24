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
typedef  int /*<<< orphan*/  u16 ;
struct omap_mcbsp {int dma_tx_lch; int /*<<< orphan*/  tx_dma_completion; int /*<<< orphan*/  io_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPCR2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int lch, u16 ch_status, void *data)
{
	struct omap_mcbsp *mcbsp_dma_tx = data;

	FUNC2(mcbsp_dma_tx->dev, "TX DMA callback : 0x%x\n",
		FUNC0(mcbsp_dma_tx->io_base, SPCR2));

	/* We can free the channels */
	FUNC3(mcbsp_dma_tx->dma_tx_lch);
	mcbsp_dma_tx->dma_tx_lch = -1;

	FUNC1(&mcbsp_dma_tx->tx_dma_completion);
}