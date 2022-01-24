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
struct mmci_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  mmc; int /*<<< orphan*/  data_xfered; int /*<<< orphan*/ * cmd; int /*<<< orphan*/ * mrq; int /*<<< orphan*/  data; scalar_t__ base; } ;
struct mmc_request {TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  bytes_xfered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMCICOMMAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct mmci_host *host, struct mmc_request *mrq)
{
	FUNC4(0, host->base + MMCICOMMAND);

	FUNC0(host->data);

	host->mrq = NULL;
	host->cmd = NULL;

	if (mrq->data)
		mrq->data->bytes_xfered = host->data_xfered;

	/*
	 * Need to drop the host lock here; mmc_request_done may call
	 * back into the driver...
	 */
	FUNC3(&host->lock);
	FUNC1(host->mmc, mrq);
	FUNC2(&host->lock);
}