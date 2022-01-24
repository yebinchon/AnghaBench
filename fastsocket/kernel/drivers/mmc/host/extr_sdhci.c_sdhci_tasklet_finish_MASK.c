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
struct sdhci_host {int flags; int quirks; unsigned int clock; int /*<<< orphan*/  mmc; int /*<<< orphan*/  lock; int /*<<< orphan*/ * data; int /*<<< orphan*/ * cmd; struct mmc_request* mrq; int /*<<< orphan*/  timer; } ;
struct mmc_request {TYPE_3__* data; TYPE_1__* cmd; } ;
struct TYPE_6__ {TYPE_2__* stop; scalar_t__ error; } ;
struct TYPE_5__ {scalar_t__ error; } ;
struct TYPE_4__ {scalar_t__ error; } ;

/* Variables and functions */
 int SDHCI_DEVICE_DEAD ; 
 int SDHCI_QUIRK_CLOCK_BEFORE_RESET ; 
 int SDHCI_QUIRK_RESET_AFTER_REQUEST ; 
 int /*<<< orphan*/  SDHCI_RESET_CMD ; 
 int /*<<< orphan*/  SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(unsigned long param)
{
	struct sdhci_host *host;
	unsigned long flags;
	struct mmc_request *mrq;

	host = (struct sdhci_host*)param;

	FUNC6(&host->lock, flags);

	FUNC0(&host->timer);

	mrq = host->mrq;

	/*
	 * The controller needs a reset of internal state machines
	 * upon error conditions.
	 */
	if (!(host->flags & SDHCI_DEVICE_DEAD) &&
		(mrq->cmd->error ||
		 (mrq->data && (mrq->data->error ||
		  (mrq->data->stop && mrq->data->stop->error))) ||
		   (host->quirks & SDHCI_QUIRK_RESET_AFTER_REQUEST))) {

		/* Some controllers need this kick or reset won't work here */
		if (host->quirks & SDHCI_QUIRK_CLOCK_BEFORE_RESET) {
			unsigned int clock;

			/* This is to force an update */
			clock = host->clock;
			host->clock = 0;
			FUNC5(host, clock);
		}

		/* Spec says we should do both at the same time, but Ricoh
		   controllers do not like that. */
		FUNC4(host, SDHCI_RESET_CMD);
		FUNC4(host, SDHCI_RESET_DATA);
	}

	host->mrq = NULL;
	host->cmd = NULL;
	host->data = NULL;

#ifndef SDHCI_USE_LEDS_CLASS
	FUNC3(host);
#endif

	FUNC2();
	FUNC7(&host->lock, flags);

	FUNC1(host->mmc, mrq);
}