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
struct s3cmci_host {int dmatogo; int /*<<< orphan*/  dma; scalar_t__ dma_complete; int /*<<< orphan*/  mmc; } ;
struct mmc_data {int flags; int /*<<< orphan*/ * sg; int /*<<< orphan*/  sg_len; } ;

/* Variables and functions */
 int BOTH_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  S3C2410_DMAOP_FLUSH ; 
 int /*<<< orphan*/  S3C2410_DMAOP_START ; 
 int /*<<< orphan*/  S3C2410_DMASRC_HW ; 
 int /*<<< orphan*/  S3C2410_DMASRC_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct s3cmci_host*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dbg_dma ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct s3cmci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s3cmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct s3cmci_host *host, struct mmc_data *data)
{
	int dma_len, i;
	int rw = data->flags & MMC_DATA_WRITE;

	FUNC0((data->flags & BOTH_DIR) == BOTH_DIR);

	FUNC6(host, rw ? S3C2410_DMASRC_MEM : S3C2410_DMASRC_HW);
	FUNC4(host->dma, S3C2410_DMAOP_FLUSH);

	dma_len = FUNC2(FUNC3(host->mmc), data->sg, data->sg_len,
			     rw ? DMA_TO_DEVICE : DMA_FROM_DEVICE);

	if (dma_len == 0)
		return -ENOMEM;

	host->dma_complete = 0;
	host->dmatogo = dma_len;

	for (i = 0; i < dma_len; i++) {
		int res;

		FUNC1(host, dbg_dma, "enqueue %i: %08x@%u\n", i,
		    FUNC7(&data->sg[i]),
		    FUNC8(&data->sg[i]));

		res = FUNC5(host->dma, host,
					  FUNC7(&data->sg[i]),
					  FUNC8(&data->sg[i]));

		if (res) {
			FUNC4(host->dma, S3C2410_DMAOP_FLUSH);
			return -EBUSY;
		}
	}

	FUNC4(host->dma, S3C2410_DMAOP_START);

	return 0;
}