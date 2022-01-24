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
struct mmc_request {int /*<<< orphan*/  cmd; TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct imxmci_host {struct mmc_request* req; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned int CMD_DAT_CONT_DATA_ENABLE ; 
 unsigned int CMD_DAT_CONT_STREAM_BLOCK ; 
 unsigned int CMD_DAT_CONT_WRITE ; 
 int MMC_DATA_STREAM ; 
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imxmci_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct imxmci_host*,int /*<<< orphan*/ ,unsigned int) ; 
 struct imxmci_host* FUNC3 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc, struct mmc_request *req)
{
	struct imxmci_host *host = FUNC3(mmc);
	unsigned int cmdat;

	FUNC0(host->req != NULL);

	host->req = req;

	cmdat = 0;

	if (req->data) {
		FUNC1(host, req->data);

		cmdat |= CMD_DAT_CONT_DATA_ENABLE;

		if (req->data->flags & MMC_DATA_WRITE)
			cmdat |= CMD_DAT_CONT_WRITE;

		if (req->data->flags & MMC_DATA_STREAM)
			cmdat |= CMD_DAT_CONT_STREAM_BLOCK;
	}

	FUNC2(host, req->cmd, cmdat);
}