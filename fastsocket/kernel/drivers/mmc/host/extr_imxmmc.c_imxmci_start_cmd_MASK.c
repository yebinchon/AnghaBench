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
typedef  unsigned int u32 ;
struct mmc_command {int flags; unsigned int opcode; int arg; } ;
struct imxmci_host {scalar_t__ actual_bus_width; unsigned int imask; int /*<<< orphan*/  mmc; int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  pending_events; int /*<<< orphan*/  stuck_timeout; struct mmc_command* cmd; } ;

/* Variables and functions */
 unsigned int CMD_DAT_CONT_BUSY ; 
 unsigned int CMD_DAT_CONT_BUS_WIDTH_4 ; 
 unsigned int CMD_DAT_CONT_DATA_ENABLE ; 
 unsigned int CMD_DAT_CONT_INIT ; 
 unsigned int CMD_DAT_CONT_RESPONSE_FORMAT_R1 ; 
 unsigned int CMD_DAT_CONT_RESPONSE_FORMAT_R2 ; 
 unsigned int CMD_DAT_CONT_RESPONSE_FORMAT_R3 ; 
 unsigned int CMD_DAT_CONT_WRITE ; 
 unsigned int IMXMCI_INT_MASK_DEFAULT ; 
 int /*<<< orphan*/  IMXMCI_PEND_CPU_DATA_b ; 
 int /*<<< orphan*/  IMXMCI_PEND_SET_INIT_b ; 
 int /*<<< orphan*/  IMXMCI_PEND_WAIT_RESP_b ; 
 unsigned int INT_MASK_BUF_READY ; 
 unsigned int INT_MASK_DATA_TRAN ; 
 unsigned int INT_MASK_END_CMD_RES ; 
 unsigned int INT_MASK_WRITE_OP_DONE ; 
 scalar_t__ MMC_BUS_WIDTH_4 ; 
 scalar_t__ MMC_REG_ARGH ; 
 scalar_t__ MMC_REG_ARGL ; 
 scalar_t__ MMC_REG_CMD ; 
 scalar_t__ MMC_REG_CMD_DAT_CONT ; 
 scalar_t__ MMC_REG_INT_MASK ; 
 int MMC_RSP_BUSY ; 
#define  MMC_RSP_R1 131 
#define  MMC_RSP_R1B 130 
#define  MMC_RSP_R2 129 
#define  MMC_RSP_R3 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct imxmci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct imxmci_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct imxmci_host *host, struct mmc_command *cmd, unsigned int cmdat)
{
	unsigned long flags;
	u32 imask;

	FUNC0(host->cmd != NULL);
	host->cmd = cmd;

	/* Ensure, that clock are stopped else command programming and start fails */
	FUNC4(host);

	if (cmd->flags & MMC_RSP_BUSY)
		cmdat |= CMD_DAT_CONT_BUSY;

	switch (FUNC6(cmd)) {
	case MMC_RSP_R1: /* short CRC, OPCODE */
	case MMC_RSP_R1B:/* short CRC, OPCODE, BUSY */
		cmdat |= CMD_DAT_CONT_RESPONSE_FORMAT_R1;
		break;
	case MMC_RSP_R2: /* long 136 bit + CRC */
		cmdat |= CMD_DAT_CONT_RESPONSE_FORMAT_R2;
		break;
	case MMC_RSP_R3: /* short */
		cmdat |= CMD_DAT_CONT_RESPONSE_FORMAT_R3;
		break;
	default:
		break;
	}

	if (FUNC10(IMXMCI_PEND_SET_INIT_b, &host->pending_events))
		cmdat |= CMD_DAT_CONT_INIT; /* This command needs init */

	if (host->actual_bus_width == MMC_BUS_WIDTH_4)
		cmdat |= CMD_DAT_CONT_BUS_WIDTH_4;

	FUNC12(cmd->opcode, host->base + MMC_REG_CMD);
	FUNC12(cmd->arg >> 16, host->base + MMC_REG_ARGH);
	FUNC12(cmd->arg & 0xffff, host->base + MMC_REG_ARGL);
	FUNC12(cmdat, host->base + MMC_REG_CMD_DAT_CONT);

	FUNC1(&host->stuck_timeout, 0);
	FUNC7(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events);


	imask = IMXMCI_INT_MASK_DEFAULT;
	imask &= ~INT_MASK_END_CMD_RES;
	if (cmdat & CMD_DAT_CONT_DATA_ENABLE) {
		/* imask &= ~INT_MASK_BUF_READY; */
		imask &= ~INT_MASK_DATA_TRAN;
		if (cmdat & CMD_DAT_CONT_WRITE)
			imask &= ~INT_MASK_WRITE_OP_DONE;
		if (FUNC11(IMXMCI_PEND_CPU_DATA_b, &host->pending_events))
			imask &= ~INT_MASK_BUF_READY;
	}

	FUNC8(&host->lock, flags);
	host->imask = imask;
	FUNC12(host->imask, host->base + MMC_REG_INT_MASK);
	FUNC9(&host->lock, flags);

	FUNC2(FUNC5(host->mmc), "CMD%02d (0x%02x) mask set to 0x%04x\n",
		cmd->opcode, cmd->opcode, imask);

	FUNC3(host);
}