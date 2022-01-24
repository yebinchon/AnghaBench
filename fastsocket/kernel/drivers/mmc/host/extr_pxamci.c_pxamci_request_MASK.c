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
struct pxamci_host {unsigned int cmdat; struct mmc_request* mrq; } ;
struct mmc_request {int /*<<< orphan*/  cmd; TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned int CMDAT_BUSY ; 
 unsigned int CMDAT_DATAEN ; 
 unsigned int CMDAT_DMAEN ; 
 unsigned int CMDAT_INIT ; 
 unsigned int CMDAT_STREAM ; 
 unsigned int CMDAT_WRITE ; 
 int MMC_DATA_STREAM ; 
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pxamci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxamci_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxamci_host*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pxamci_host*) ; 

__attribute__((used)) static void FUNC5(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct pxamci_host *host = FUNC1(mmc);
	unsigned int cmdat;

	FUNC0(host->mrq != NULL);

	host->mrq = mrq;

	FUNC4(host);

	cmdat = host->cmdat;
	host->cmdat &= ~CMDAT_INIT;

	if (mrq->data) {
		FUNC2(host, mrq->data);

		cmdat &= ~CMDAT_BUSY;
		cmdat |= CMDAT_DATAEN | CMDAT_DMAEN;
		if (mrq->data->flags & MMC_DATA_WRITE)
			cmdat |= CMDAT_WRITE;

		if (mrq->data->flags & MMC_DATA_STREAM)
			cmdat |= CMDAT_STREAM;
	}

	FUNC3(host, mrq->cmd, cmdat);
}