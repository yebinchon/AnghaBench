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
struct mmc_request {TYPE_1__* cmd; struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int blocks; int blksz; } ;
struct atmel_mci_slot {int /*<<< orphan*/  flags; int /*<<< orphan*/  mrq; struct atmel_mci* host; } ;
struct atmel_mci {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMCI_CARD_PRESENT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_mci*,struct atmel_mci_slot*,struct mmc_request*) ; 
 struct atmel_mci_slot* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct atmel_mci_slot	*slot = FUNC2(mmc);
	struct atmel_mci	*host = slot->host;
	struct mmc_data		*data;

	FUNC0(slot->mrq);

	/*
	 * We may "know" the card is gone even though there's still an
	 * electrical connection. If so, we really need to communicate
	 * this to the MMC core since there won't be any more
	 * interrupts as the card is completely removed. Otherwise,
	 * the MMC core might believe the card is still there even
	 * though the card was just removed very slowly.
	 */
	if (!FUNC4(ATMCI_CARD_PRESENT, &slot->flags)) {
		mrq->cmd->error = -ENOMEDIUM;
		FUNC3(mmc, mrq);
		return;
	}

	/* We don't support multiple blocks of weird lengths. */
	data = mrq->data;
	if (data && data->blocks > 1 && data->blksz & 3) {
		mrq->cmd->error = -EINVAL;
		FUNC3(mmc, mrq);
	}

	FUNC1(host, slot, mrq);
}