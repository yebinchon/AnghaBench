#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct mmci_host {int /*<<< orphan*/  lock; struct mmc_command* cmd; struct mmc_data* data; scalar_t__ base; } ;
struct mmc_data {int dummy; } ;
struct mmc_command {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmci_host*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MCI_CMDCRCFAIL ; 
 int MCI_CMDRESPEND ; 
 int MCI_CMDSENT ; 
 int MCI_CMDTIMEOUT ; 
 int MCI_DATABLOCKEND ; 
 int MCI_DATACRCFAIL ; 
 int MCI_DATAEND ; 
 int MCI_DATATIMEOUT ; 
 int MCI_RXOVERRUN ; 
 int MCI_TXUNDERRUN ; 
 scalar_t__ MMCICLEAR ; 
 scalar_t__ MMCIMASK0 ; 
 scalar_t__ MMCISTATUS ; 
 int /*<<< orphan*/  FUNC2 (struct mmci_host*,struct mmc_command*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmci_host*,struct mmc_data*,int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct mmci_host *host = dev_id;
	u32 status;
	int ret = 0;

	FUNC5(&host->lock);

	do {
		struct mmc_command *cmd;
		struct mmc_data *data;

		status = FUNC4(host->base + MMCISTATUS);
		status &= FUNC4(host->base + MMCIMASK0);
		FUNC7(status, host->base + MMCICLEAR);

		FUNC0(host, "irq0 %08x\n", status);

		data = host->data;
		if (status & (MCI_DATACRCFAIL|MCI_DATATIMEOUT|MCI_TXUNDERRUN|
			      MCI_RXOVERRUN|MCI_DATAEND|MCI_DATABLOCKEND) && data)
			FUNC3(host, data, status);

		cmd = host->cmd;
		if (status & (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT|MCI_CMDSENT|MCI_CMDRESPEND) && cmd)
			FUNC2(host, cmd, status);

		ret = 1;
	} while (status);

	FUNC6(&host->lock);

	return FUNC1(ret);
}