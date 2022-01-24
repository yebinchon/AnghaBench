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
struct mmc_omap_host {int /*<<< orphan*/  send_stop_work; struct mmc_data* stop_data; int /*<<< orphan*/  current_slot; struct mmc_host* mmc; int /*<<< orphan*/ * mrq; scalar_t__ sg_len; int /*<<< orphan*/ * data; scalar_t__ dma_in_use; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int /*<<< orphan*/  mrq; int /*<<< orphan*/  stop; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_omap_host*,struct mmc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mmc_omap_host *host, struct mmc_data *data)
{
	if (host->dma_in_use)
		FUNC0(host, data, data->error);

	host->data = NULL;
	host->sg_len = 0;

	/* NOTE:  MMC layer will sometimes poll-wait CMD13 next, issuing
	 * dozens of requests until the card finishes writing data.
	 * It'd be cheaper to just wait till an EOFB interrupt arrives...
	 */

	if (!data->stop) {
		struct mmc_host *mmc;

		host->mrq = NULL;
		mmc = host->mmc;
		FUNC1(host->current_slot, 1);
		FUNC2(mmc, data->mrq);
		return;
	}

	host->stop_data = data;
	FUNC3(&host->send_stop_work);
}