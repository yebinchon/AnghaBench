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
struct sdhci_host {int flags; int /*<<< orphan*/  finish_tasklet; int /*<<< orphan*/  mmc; struct mmc_data* data; } ;
struct mmc_data {int flags; int bytes_xfered; int blksz; int blocks; scalar_t__ stop; scalar_t__ error; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int MMC_DATA_READ ; 
 int SDHCI_REQ_USE_DMA ; 
 int /*<<< orphan*/  SDHCI_RESET_CMD ; 
 int /*<<< orphan*/  SDHCI_RESET_DATA ; 
 int SDHCI_USE_ADMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host)
{
	struct mmc_data *data;

	FUNC0(!host->data);

	data = host->data;
	host->data = NULL;

	if (host->flags & SDHCI_REQ_USE_DMA) {
		if (host->flags & SDHCI_USE_ADMA)
			FUNC3(host, data);
		else {
			FUNC1(FUNC2(host->mmc), data->sg,
				data->sg_len, (data->flags & MMC_DATA_READ) ?
					DMA_FROM_DEVICE : DMA_TO_DEVICE);
		}
	}

	/*
	 * The specification states that the block count register must
	 * be updated, but it does not specify at what point in the
	 * data flow. That makes the register entirely useless to read
	 * back so we have to assume that nothing made it to the card
	 * in the event of an error.
	 */
	if (data->error)
		data->bytes_xfered = 0;
	else
		data->bytes_xfered = data->blksz * data->blocks;

	if (data->stop) {
		/*
		 * The controller needs a reset of internal state machines
		 * upon error conditions.
		 */
		if (data->error) {
			FUNC4(host, SDHCI_RESET_CMD);
			FUNC4(host, SDHCI_RESET_DATA);
		}

		FUNC5(host, data->stop);
	} else
		FUNC6(&host->finish_tasklet);
}