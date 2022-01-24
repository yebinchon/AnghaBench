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
struct mmc_request {TYPE_1__* cmd; int /*<<< orphan*/  data; } ;
struct mmc_host {int dummy; } ;
struct au1xmmc_host {scalar_t__ status; struct mmc_request* mrq; } ;
struct TYPE_2__ {int error; } ;

/* Variables and functions */
 int ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 scalar_t__ HOST_S_CMD ; 
 scalar_t__ HOST_S_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct au1xmmc_host*) ; 
 int FUNC4 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct au1xmmc_host*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 struct au1xmmc_host* FUNC7 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC8(struct mmc_host* mmc, struct mmc_request* mrq)
{
	struct au1xmmc_host *host = FUNC7(mmc);
	int ret = 0;

	FUNC1(FUNC6());
	FUNC1(host->status != HOST_S_IDLE);

	host->mrq = mrq;
	host->status = HOST_S_CMD;

	/* fail request immediately if no card is present */
	if (0 == FUNC2(mmc)) {
		mrq->cmd->error = -ENOMEDIUM;
		FUNC3(host);
		return;
	}

	if (mrq->data) {
		FUNC0(host);
		ret = FUNC4(host, mrq->data);
	}

	if (!ret)
		ret = FUNC5(host, 0, mrq->cmd, mrq->data);

	if (ret) {
		mrq->cmd->error = ret;
		FUNC3(host);
	}
}