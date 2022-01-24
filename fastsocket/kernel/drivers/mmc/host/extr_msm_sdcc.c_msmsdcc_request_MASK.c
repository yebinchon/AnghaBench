#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  cmdpoll_misses; int /*<<< orphan*/  cmdpoll_hits; int /*<<< orphan*/  reqs; } ;
struct TYPE_5__ {struct mmc_request* mrq; } ;
struct msmsdcc_host {scalar_t__ pwr; int /*<<< orphan*/  lock; int /*<<< orphan*/  command_timer; TYPE_2__ stats; scalar_t__ base; scalar_t__ cmdpoll; TYPE_1__ curr; scalar_t__ eject; } ;
struct mmc_request {TYPE_4__* cmd; TYPE_3__* data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  error; } ;
struct TYPE_7__ {int flags; int bytes_xfered; int blksz; int blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SPINMAX ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 scalar_t__ HZ ; 
 int MCI_CMDCRCFAIL ; 
 int MCI_CMDRESPEND ; 
 int MCI_CMDTIMEOUT ; 
 scalar_t__ MMCICLEAR ; 
 scalar_t__ MMCISTATUS ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ jiffies ; 
 struct msmsdcc_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct msmsdcc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msmsdcc_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msmsdcc_host*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct msmsdcc_host*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct msmsdcc_host *host = FUNC1(mmc);
	unsigned long flags;

	FUNC0(host->curr.mrq != NULL);
	FUNC0(host->pwr == 0);

	FUNC9(&host->lock, flags);

	host->stats.reqs++;

	if (host->eject) {
		if (mrq->data && !(mrq->data->flags & MMC_DATA_READ)) {
			mrq->cmd->error = 0;
			mrq->data->bytes_xfered = mrq->data->blksz *
						  mrq->data->blocks;
		} else
			mrq->cmd->error = -ENOMEDIUM;

		FUNC10(&host->lock, flags);
		FUNC2(mmc, mrq);
		return;
	}

	host->curr.mrq = mrq;

	if (mrq->data && mrq->data->flags & MMC_DATA_READ)
		FUNC7(host, mrq->data);

	FUNC6(host, mrq->cmd, 0);

	if (host->cmdpoll && !FUNC5(host,
				MCI_CMDRESPEND|MCI_CMDCRCFAIL|MCI_CMDTIMEOUT,
				CMD_SPINMAX)) {
		uint32_t status = FUNC8(host->base + MMCISTATUS);
		FUNC4(host, status);
		FUNC11(MCI_CMDRESPEND | MCI_CMDCRCFAIL | MCI_CMDTIMEOUT,
		       host->base + MMCICLEAR);
		host->stats.cmdpoll_hits++;
	} else {
		host->stats.cmdpoll_misses++;
		FUNC3(&host->command_timer, jiffies + HZ);
	}
	FUNC10(&host->lock, flags);
}