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
struct mmc_omap_host {int dma_ch; int dma_is_read; scalar_t__ id; int /*<<< orphan*/  mmc; int /*<<< orphan*/  dma_timer; } ;
struct mmc_data {int flags; } ;

/* Variables and functions */
 int MMC_DATA_WRITE ; 
 int OMAP_DMA_MMC2_RX ; 
 int OMAP_DMA_MMC2_TX ; 
 int OMAP_DMA_MMC_RX ; 
 int OMAP_DMA_MMC_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmc_omap_dma_cb ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char const*,int /*<<< orphan*/ ,struct mmc_omap_host*,int*) ; 

__attribute__((used)) static int FUNC5(struct mmc_omap_host *host, struct mmc_data *data)
{
	const char *dma_dev_name;
	int sync_dev, dma_ch, is_read, r;

	is_read = !(data->flags & MMC_DATA_WRITE);
	FUNC0(&host->dma_timer);
	if (host->dma_ch >= 0) {
		if (is_read == host->dma_is_read)
			return 0;
		FUNC3(host->dma_ch);
		host->dma_ch = -1;
	}

	if (is_read) {
		if (host->id == 0) {
			sync_dev = OMAP_DMA_MMC_RX;
			dma_dev_name = "MMC1 read";
		} else {
			sync_dev = OMAP_DMA_MMC2_RX;
			dma_dev_name = "MMC2 read";
		}
	} else {
		if (host->id == 0) {
			sync_dev = OMAP_DMA_MMC_TX;
			dma_dev_name = "MMC1 write";
		} else {
			sync_dev = OMAP_DMA_MMC2_TX;
			dma_dev_name = "MMC2 write";
		}
	}
	r = FUNC4(sync_dev, dma_dev_name, mmc_omap_dma_cb,
			     host, &dma_ch);
	if (r != 0) {
		FUNC1(FUNC2(host->mmc), "omap_request_dma() failed with %d\n", r);
		return r;
	}
	host->dma_ch = dma_ch;
	host->dma_is_read = is_read;

	return 0;
}