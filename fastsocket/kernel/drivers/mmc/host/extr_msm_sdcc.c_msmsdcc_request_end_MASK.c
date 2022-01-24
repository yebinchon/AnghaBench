#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data_xfered; int /*<<< orphan*/ * cmd; int /*<<< orphan*/ * mrq; int /*<<< orphan*/  data; } ;
struct msmsdcc_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  mmc; TYPE_2__ curr; scalar_t__ base; } ;
struct mmc_request {TYPE_3__* cmd; TYPE_1__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  error; } ;
struct TYPE_4__ {int /*<<< orphan*/  bytes_xfered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ MMCICOMMAND ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct msmsdcc_host *host, struct mmc_request *mrq)
{
	FUNC5(0, host->base + MMCICOMMAND);

	FUNC0(host->curr.data);

	host->curr.mrq = NULL;
	host->curr.cmd = NULL;

	if (mrq->data)
		mrq->data->bytes_xfered = host->curr.data_xfered;
	if (mrq->cmd->error == -ETIMEDOUT)
		FUNC1(5);

	/*
	 * Need to drop the host lock here; mmc_request_done may call
	 * back into the driver...
	 */
	FUNC4(&host->lock);
	FUNC2(host->mmc, mrq);
	FUNC3(&host->lock);
}