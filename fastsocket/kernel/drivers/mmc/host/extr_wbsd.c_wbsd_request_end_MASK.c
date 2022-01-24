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
struct wbsd_host {scalar_t__ dma; int /*<<< orphan*/  lock; int /*<<< orphan*/  mmc; int /*<<< orphan*/ * mrq; } ;
struct mmc_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WBSD_IDX_DMA ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wbsd_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct wbsd_host *host, struct mmc_request *mrq)
{
	unsigned long dmaflags;

	if (host->dma >= 0) {
		/*
		 * Release ISA DMA controller.
		 */
		dmaflags = FUNC0();
		FUNC2(host->dma);
		FUNC1(host->dma);
		FUNC4(dmaflags);

		/*
		 * Disable DMA on host.
		 */
		FUNC7(host, WBSD_IDX_DMA, 0);
	}

	host->mrq = NULL;

	/*
	 * MMC layer might call back into the driver so first unlock.
	 */
	FUNC6(&host->lock);
	FUNC3(host->mmc, mrq);
	FUNC5(&host->lock);
}