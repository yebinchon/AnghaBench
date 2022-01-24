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
struct omap_hsmmc_host {int dma_ch; int /*<<< orphan*/  mmc; struct mmc_request* mrq; int /*<<< orphan*/  dma_len; scalar_t__ use_dma; int /*<<< orphan*/ * data; scalar_t__ response_busy; TYPE_1__* cmd; } ;
struct mmc_request {int dummy; } ;
struct mmc_data {int blocks; int blksz; int /*<<< orphan*/  stop; struct mmc_request* mrq; scalar_t__ bytes_xfered; int /*<<< orphan*/  error; int /*<<< orphan*/  sg; } ;
struct TYPE_2__ {int opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hsmmc_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hsmmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct omap_hsmmc_host *host, struct mmc_data *data)
{
	if (!data) {
		struct mmc_request *mrq = host->mrq;

		/* TC before CC from CMD6 - don't know why, but it happens */
		if (host->cmd && host->cmd->opcode == 6 &&
		    host->response_busy) {
			host->response_busy = 0;
			return;
		}

		host->mrq = NULL;
		FUNC2(host->mmc, mrq);
		return;
	}

	host->data = NULL;

	if (host->use_dma && host->dma_ch != -1)
		FUNC0(FUNC1(host->mmc), data->sg, host->dma_len,
			FUNC3(host, data));

	if (!data->error)
		data->bytes_xfered += data->blocks * (data->blksz);
	else
		data->bytes_xfered = 0;

	if (!data->stop) {
		host->mrq = NULL;
		FUNC2(host->mmc, data->mrq);
		return;
	}
	FUNC4(host, data->stop, NULL);
}