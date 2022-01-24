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
struct mmc_request {TYPE_1__* cmd; TYPE_1__* stop; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int /*<<< orphan*/  finish_req_tasklet; struct mmc_request* mrq; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_MMC_IE_TEST_MASK ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cb710_slot*) ; 
 struct cb710_slot* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct cb710_mmc_reader* FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct cb710_slot *slot = FUNC4(mmc);
	struct cb710_mmc_reader *reader = FUNC6(mmc);

	FUNC0(reader->mrq != NULL);

	reader->mrq = mrq;
	FUNC2(slot, CB710_MMC_IE_TEST_MASK, 0);

	if (FUNC3(slot)) {
		if (!FUNC1(mmc, mrq->cmd) && mrq->stop)
			FUNC1(mmc, mrq->stop);
		FUNC5(1);
	} else {
		mrq->cmd->error = -ENOMEDIUM;
	}

	FUNC7(&reader->finish_req_tasklet);
}