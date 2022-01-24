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
typedef  int u16 ;
struct omap_hsmmc_host {int dma_ch; scalar_t__ dma_sg_idx; scalar_t__ dma_len; int /*<<< orphan*/  sem; TYPE_1__* data; int /*<<< orphan*/  mmc; } ;
struct TYPE_2__ {scalar_t__ sg; } ;

/* Variables and functions */
 int OMAP2_DMA_MISALIGNED_ERR_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hsmmc_host*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(int lch, u16 ch_status, void *data)
{
	struct omap_hsmmc_host *host = data;

	if (ch_status & OMAP2_DMA_MISALIGNED_ERR_IRQ)
		FUNC0(FUNC1(host->mmc), "MISALIGNED_ADRS_ERR\n");

	if (host->dma_ch < 0)
		return;

	host->dma_sg_idx++;
	if (host->dma_sg_idx < host->dma_len) {
		/* Fire up the next transfer. */
		FUNC3(host, host->data,
					   host->data->sg + host->dma_sg_idx);
		return;
	}

	FUNC2(host->dma_ch);
	host->dma_ch = -1;
	/*
	 * DMA Callback: run in interrupt context.
	 * mutex_unlock will throw a kernel warning if used.
	 */
	FUNC4(&host->sem);
}