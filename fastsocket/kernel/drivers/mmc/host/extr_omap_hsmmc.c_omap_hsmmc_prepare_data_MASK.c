#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {int /*<<< orphan*/  mmc; scalar_t__ use_dma; int /*<<< orphan*/  base; TYPE_2__* data; } ;
struct mmc_request {TYPE_2__* data; TYPE_1__* cmd; } ;
struct TYPE_4__ {int blksz; int blocks; unsigned int timeout_ns; int /*<<< orphan*/  timeout_clks; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK ; 
 int MMC_RSP_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct omap_hsmmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hsmmc_host*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct omap_hsmmc_host *host, struct mmc_request *req)
{
	int ret;
	host->data = req->data;

	if (req->data == NULL) {
		FUNC0(host->base, BLK, 0);
		/*
		 * Set an arbitrary 100ms data timeout for commands with
		 * busy signal.
		 */
		if (req->cmd->flags & MMC_RSP_BUSY)
			FUNC4(host, 100000000U, 0);
		return 0;
	}

	FUNC0(host->base, BLK, (req->data->blksz)
					| (req->data->blocks << 16));
	FUNC4(host, req->data->timeout_ns, req->data->timeout_clks);

	if (host->use_dma) {
		ret = FUNC3(host, req);
		if (ret != 0) {
			FUNC1(FUNC2(host->mmc), "MMC start dma failure\n");
			return ret;
		}
	}
	return 0;
}