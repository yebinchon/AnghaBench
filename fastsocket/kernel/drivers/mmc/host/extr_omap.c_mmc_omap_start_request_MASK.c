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
struct mmc_request {int /*<<< orphan*/  cmd; } ;
struct mmc_omap_host {int /*<<< orphan*/  dma_ch; scalar_t__ dma_in_use; struct mmc_request* mrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_omap_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mmc_omap_host *host,
				   struct mmc_request *req)
{
	FUNC0(host->mrq != NULL);

	host->mrq = req;

	/* only touch fifo AFTER the controller readies it */
	FUNC2(host, req);
	FUNC3(host, req->cmd);
	if (host->dma_in_use)
		FUNC4(host->dma_ch);
	FUNC0(FUNC1());
}