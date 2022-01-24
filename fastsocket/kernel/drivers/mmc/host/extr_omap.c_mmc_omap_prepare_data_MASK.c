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
struct mmc_request {struct mmc_data* data; } ;
struct mmc_omap_host {int dma_in_use; int use_dma; unsigned int sg_len; int total_bytes_left; scalar_t__ dma_done; scalar_t__ brs_received; int /*<<< orphan*/  mmc; scalar_t__ sg_idx; struct mmc_data* data; } ;
struct mmc_data {int blksz; int blocks; int sg_len; int flags; TYPE_1__* sg; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLEN ; 
 int /*<<< orphan*/  BUF ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  NBLK ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_omap_host*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mmc_omap_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_omap_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_omap_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_omap_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_omap_host*,struct mmc_request*) ; 

__attribute__((used)) static void
FUNC8(struct mmc_omap_host *host, struct mmc_request *req)
{
	struct mmc_data *data = req->data;
	int i, use_dma, block_size;
	unsigned sg_len;

	host->data = data;
	if (data == NULL) {
		FUNC0(host, BLEN, 0);
		FUNC0(host, NBLK, 0);
		FUNC0(host, BUF, 0);
		host->dma_in_use = 0;
		FUNC6(host, req);
		return;
	}

	block_size = data->blksz;

	FUNC0(host, NBLK, data->blocks - 1);
	FUNC0(host, BLEN, block_size - 1);
	FUNC7(host, req);

	/* cope with calling layer confusion; it issues "single
	 * block" writes using multi-block scatterlists.
	 */
	sg_len = (data->blocks == 1) ? 1 : data->sg_len;

	/* Only do DMA for entire blocks */
	use_dma = host->use_dma;
	if (use_dma) {
		for (i = 0; i < sg_len; i++) {
			if ((data->sg[i].length % block_size) != 0) {
				use_dma = 0;
				break;
			}
		}
	}

	host->sg_idx = 0;
	if (use_dma) {
		if (FUNC3(host, data) == 0) {
			enum dma_data_direction dma_data_dir;

			if (data->flags & MMC_DATA_WRITE)
				dma_data_dir = DMA_TO_DEVICE;
			else
				dma_data_dir = DMA_FROM_DEVICE;

			host->sg_len = FUNC1(FUNC2(host->mmc), data->sg,
						sg_len, dma_data_dir);
			host->total_bytes_left = 0;
			FUNC4(host, req->data);
			host->brs_received = 0;
			host->dma_done = 0;
			host->dma_in_use = 1;
		} else
			use_dma = 0;
	}

	/* Revert to PIO? */
	if (!use_dma) {
		FUNC0(host, BUF, 0x1f1f);
		host->total_bytes_left = data->blocks * block_size;
		host->sg_len = sg_len;
		FUNC5(host);
		host->dma_in_use = 0;
	}
}