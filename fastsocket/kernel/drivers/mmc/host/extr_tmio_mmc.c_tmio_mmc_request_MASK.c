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
struct tmio_mmc_host {struct mmc_request* mrq; } ;
struct mmc_request {TYPE_1__* cmd; int /*<<< orphan*/  data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int error; } ;

/* Variables and functions */
 struct tmio_mmc_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct tmio_mmc_host*,TYPE_1__*) ; 
 int FUNC4 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct tmio_mmc_host *host = FUNC0(mmc);
	int ret;

	if (host->mrq)
		FUNC2("request not null\n");

	host->mrq = mrq;

	if (mrq->data) {
		ret = FUNC4(host, mrq->data);
		if (ret)
			goto fail;
	}

	ret = FUNC3(host, mrq->cmd);

	if (!ret)
		return;

fail:
	mrq->cmd->error = ret;
	FUNC1(mmc, mrq);
}