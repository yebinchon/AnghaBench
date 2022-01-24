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
struct TYPE_5__ {int /*<<< orphan*/ * cmd; struct mmc_request* mrq; } ;
struct TYPE_4__ {int /*<<< orphan*/  sg; } ;
struct msmsdcc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  lock; TYPE_2__ curr; scalar_t__ base; TYPE_1__ dma; } ;
struct mmc_request {TYPE_3__* cmd; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ MMCICOMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct msmsdcc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct mmc_request*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(unsigned long _data)
{
	struct msmsdcc_host	*host = (struct msmsdcc_host *) _data;
	struct mmc_request	*mrq;
	unsigned long		flags;

	FUNC5(&host->lock, flags);
	mrq = host->curr.mrq;

	if (!mrq) {
		FUNC4("%s: Command expiry misfire\n",
			FUNC0(host->mmc));
		FUNC6(&host->lock, flags);
		return;
	}

	FUNC3("%s: Command timeout (%p %p %p %p)\n",
	       FUNC0(host->mmc), mrq, mrq->cmd,
	       mrq->data, host->dma.sg);

	mrq->cmd->error = -ETIMEDOUT;
	FUNC2(host);

	FUNC7(0, host->base + MMCICOMMAND);

	host->curr.mrq = NULL;
	host->curr.cmd = NULL;

	FUNC6(&host->lock, flags);
	FUNC1(host->mmc, mrq);
}