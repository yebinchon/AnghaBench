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
struct scatterlist {int dummy; } ;
struct omap_hsmmc_host {int dma_ch; TYPE_1__* data; scalar_t__ mapbase; } ;
struct mmc_data {int flags; } ;
struct TYPE_2__ {int blksz; } ;

/* Variables and functions */
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  OMAP_DMA_AMODE_CONSTANT ; 
 int /*<<< orphan*/  OMAP_DMA_AMODE_POST_INC ; 
 int /*<<< orphan*/  OMAP_DMA_DATA_TYPE_S32 ; 
 int /*<<< orphan*/  OMAP_DMA_SYNC_FRAME ; 
 scalar_t__ OMAP_HSMMC_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct omap_hsmmc_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct scatterlist*) ; 
 int FUNC6 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC7(struct omap_hsmmc_host *host,
				       struct mmc_data *data,
				       struct scatterlist *sgl)
{
	int blksz, nblk, dma_ch;

	dma_ch = host->dma_ch;
	if (data->flags & MMC_DATA_WRITE) {
		FUNC1(dma_ch, 0, OMAP_DMA_AMODE_CONSTANT,
			(host->mapbase + OMAP_HSMMC_DATA), 0, 0);
		FUNC2(dma_ch, 0, OMAP_DMA_AMODE_POST_INC,
			FUNC5(sgl), 0, 0);
	} else {
		FUNC2(dma_ch, 0, OMAP_DMA_AMODE_CONSTANT,
			(host->mapbase + OMAP_HSMMC_DATA), 0, 0);
		FUNC1(dma_ch, 0, OMAP_DMA_AMODE_POST_INC,
			FUNC5(sgl), 0, 0);
	}

	blksz = host->data->blksz;
	nblk = FUNC6(sgl) / blksz;

	FUNC3(dma_ch, OMAP_DMA_DATA_TYPE_S32,
			blksz / 4, nblk, OMAP_DMA_SYNC_FRAME,
			FUNC0(host, data),
			!(data->flags & MMC_DATA_WRITE));

	FUNC4(dma_ch);
}