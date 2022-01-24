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
typedef  int u16 ;
struct mmc_omap_host {scalar_t__ dma_ch; scalar_t__ sg_idx; scalar_t__ sg_len; struct mmc_data* data; scalar_t__ dma_len; int /*<<< orphan*/  mmc; } ;
struct mmc_data {int /*<<< orphan*/  bytes_xfered; } ;

/* Variables and functions */
 int OMAP1_DMA_TOUT_IRQ ; 
 int OMAP_DMA_BLOCK_IRQ ; 
 int OMAP_DMA_DROP_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_omap_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_omap_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(int lch, u16 ch_status, void *data)
{
	struct mmc_omap_host *host = (struct mmc_omap_host *) data;
	struct mmc_data *mmcdat = host->data;

	if (FUNC5(host->dma_ch < 0)) {
		FUNC0(FUNC1(host->mmc),
			"DMA callback while DMA not enabled\n");
		return;
	}
	/* FIXME: We really should do something to _handle_ the errors */
	if (ch_status & OMAP1_DMA_TOUT_IRQ) {
		FUNC0(FUNC1(host->mmc),"DMA timeout\n");
		return;
	}
	if (ch_status & OMAP_DMA_DROP_IRQ) {
		FUNC0(FUNC1(host->mmc), "DMA sync error\n");
		return;
	}
	if (!(ch_status & OMAP_DMA_BLOCK_IRQ)) {
		return;
	}
	mmcdat->bytes_xfered += host->dma_len;
	host->sg_idx++;
	if (host->sg_idx < host->sg_len) {
		FUNC3(host, host->data);
		FUNC4(host->dma_ch);
	} else
		FUNC2(host, host->data);
}