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
struct scatterlist {int length; } ;
struct omap_hsmmc_host {int dma_ch; scalar_t__ dma_sg_idx; int /*<<< orphan*/  mmc; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  sem; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {int sg_len; int blksz; struct scatterlist* sg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_hsmmc_host*,struct mmc_data*,struct scatterlist*) ; 
 int /*<<< orphan*/  omap_hsmmc_dma_cb ; 
 int /*<<< orphan*/  FUNC7 (struct omap_hsmmc_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_hsmmc_host*,struct mmc_data*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct omap_hsmmc_host*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct omap_hsmmc_host *host,
					struct mmc_request *req)
{
	int dma_ch = 0, ret = 0, err = 1, i;
	struct mmc_data *data = req->data;

	/* Sanity check: all the SG entries must be aligned by block size. */
	for (i = 0; i < data->sg_len; i++) {
		struct scatterlist *sgl;

		sgl = data->sg + i;
		if (sgl->length % data->blksz)
			return -EINVAL;
	}
	if ((data->blksz % 4) != 0)
		/* REVISIT: The MMC buffer increments only when MSB is written.
		 * Return error for blksz which is non multiple of four.
		 */
		return -EINVAL;

	/*
	 * If for some reason the DMA transfer is still active,
	 * we wait for timeout period and free the dma
	 */
	if (host->dma_ch != -1) {
		FUNC11(TASK_UNINTERRUPTIBLE);
		FUNC10(100);
		if (FUNC2(&host->sem)) {
			FUNC5(host->dma_ch);
			host->dma_ch = -1;
			FUNC12(&host->sem);
			return err;
		}
	} else {
		if (FUNC2(&host->sem))
			return err;
	}

	ret = FUNC9(FUNC8(host, data),
			       "MMC/SD", omap_hsmmc_dma_cb, host, &dma_ch);
	if (ret != 0) {
		FUNC0(FUNC3(host->mmc),
			"%s: omap_request_dma() failed with %d\n",
			FUNC4(host->mmc), ret);
		return ret;
	}

	host->dma_len = FUNC1(FUNC3(host->mmc), data->sg,
			data->sg_len, FUNC7(host, data));
	host->dma_ch = dma_ch;
	host->dma_sg_idx = 0;

	FUNC6(host, data, data->sg);

	return 0;
}