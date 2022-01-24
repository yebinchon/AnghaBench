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
struct omap_hsmmc_host {int response_busy; int /*<<< orphan*/  base; int /*<<< orphan*/  flags; int /*<<< orphan*/  irq_lock; scalar_t__ use_dma; TYPE_1__* mrq; struct mmc_command* cmd; int /*<<< orphan*/  mmc; } ;
struct mmc_data {int flags; } ;
struct mmc_command {int opcode; int arg; int flags; } ;
struct TYPE_2__ {struct mmc_command* stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG ; 
 int BCE ; 
 int BRR_ENABLE ; 
 int BWR_ENABLE ; 
 int /*<<< orphan*/  CMD ; 
 int DDIR ; 
 int DMA_EN ; 
 int DP_SELECT ; 
 int /*<<< orphan*/  IE ; 
 int INT_EN_MASK ; 
 int /*<<< orphan*/  ISE ; 
 int MMC_DATA_READ ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_BUSY ; 
 int MMC_RSP_PRESENT ; 
 int MSBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STAT ; 
 int STAT_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct omap_hsmmc_host *host, struct mmc_command *cmd,
	struct mmc_data *data)
{
	int cmdreg = 0, resptype = 0, cmdtype = 0;

	FUNC1(FUNC3(host->mmc), "%s: CMD%d, argument 0x%08x\n",
		FUNC4(host->mmc), cmd->opcode, cmd->arg);
	host->cmd = cmd;

	/*
	 * Clear status bits and enable interrupts
	 */
	FUNC0(host->base, STAT, STAT_CLEAR);
	FUNC0(host->base, ISE, INT_EN_MASK);

	if (host->use_dma)
		FUNC0(host->base, IE,
				 INT_EN_MASK & ~(BRR_ENABLE | BWR_ENABLE));
	else
		FUNC0(host->base, IE, INT_EN_MASK);

	host->response_busy = 0;
	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136)
			resptype = 1;
		else if (cmd->flags & MMC_RSP_BUSY) {
			resptype = 3;
			host->response_busy = 1;
		} else
			resptype = 2;
	}

	/*
	 * Unlike OMAP1 controller, the cmdtype does not seem to be based on
	 * ac, bc, adtc, bcr. Only commands ending an open ended transfer need
	 * a val of 0x3, rest 0x0.
	 */
	if (cmd == host->mrq->stop)
		cmdtype = 0x3;

	cmdreg = (cmd->opcode << 24) | (resptype << 16) | (cmdtype << 22);

	if (data) {
		cmdreg |= DP_SELECT | MSBS | BCE;
		if (data->flags & MMC_DATA_READ)
			cmdreg |= DDIR;
		else
			cmdreg &= ~(DDIR);
	}

	if (host->use_dma)
		cmdreg |= DMA_EN;

	/*
	 * In an interrupt context (i.e. STOP command), the spinlock is unlocked
	 * by the interrupt handler, otherwise (i.e. for a new request) it is
	 * unlocked here.
	 */
	if (!FUNC2())
		FUNC5(&host->irq_lock, host->flags);

	FUNC0(host->base, ARG, cmd->arg);
	FUNC0(host->base, CMD, cmdreg);
}