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
typedef  int u32 ;
struct imxmci_host {int status_reg; int prev_cmd_code; int actual_bus_width; scalar_t__ dma_dir; int /*<<< orphan*/  mmc; scalar_t__ req; scalar_t__ data; TYPE_1__* cmd; int /*<<< orphan*/  pending_events; scalar_t__ base; int /*<<< orphan*/  present; int /*<<< orphan*/  dma_size; int /*<<< orphan*/  dma; int /*<<< orphan*/  stuck_timeout; } ;
struct TYPE_2__ {int opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IMXMCI_PEND_CARD_XCHG_b ; 
 int /*<<< orphan*/  IMXMCI_PEND_CPU_DATA_b ; 
 int IMXMCI_PEND_CPU_DATA_m ; 
 int /*<<< orphan*/  IMXMCI_PEND_DMA_DATA_b ; 
 int /*<<< orphan*/  IMXMCI_PEND_DMA_END_b ; 
 int /*<<< orphan*/  IMXMCI_PEND_IRQ_b ; 
 int IMXMCI_PEND_IRQ_m ; 
 int /*<<< orphan*/  IMXMCI_PEND_WAIT_RESP_b ; 
 scalar_t__ MMC_REG_BLK_LEN ; 
 scalar_t__ MMC_REG_CMD_DAT_CONT ; 
 scalar_t__ MMC_REG_INT_MASK ; 
 scalar_t__ MMC_REG_NOB ; 
 scalar_t__ MMC_REG_STATUS ; 
 int STATUS_CRC_READ_ERR ; 
 int STATUS_CRC_WRITE_ERR ; 
 unsigned int STATUS_DATA_TRANS_DONE ; 
 int STATUS_END_CMD_RESP ; 
 int STATUS_ERR_MASK ; 
 int STATUS_TIME_OUT_READ ; 
 int STATUS_TIME_OUT_RESP ; 
 unsigned int STATUS_WRITE_OP_DONE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct imxmci_host*,int*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct imxmci_host*,int) ; 
 scalar_t__ FUNC7 (struct imxmci_host*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct imxmci_host*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct imxmci_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(unsigned long data)
{
	struct imxmci_host *host = (struct imxmci_host *)data;
	u32 stat;
	unsigned int data_dir_mask = 0;	/* STATUS_WR_CRC_ERROR_CODE_MASK */
	int timeout = 0;

	if (FUNC2(&host->stuck_timeout) > 4) {
		char *what;
		timeout = 1;
		stat = FUNC13(host->base + MMC_REG_STATUS);
		host->status_reg = stat;
		if (FUNC15(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events))
			if (FUNC15(IMXMCI_PEND_DMA_DATA_b, &host->pending_events))
				what = "RESP+DMA";
			else
				what = "RESP";
		else
			if (FUNC15(IMXMCI_PEND_DMA_DATA_b, &host->pending_events))
				if (FUNC15(IMXMCI_PEND_DMA_END_b, &host->pending_events))
					what = "DATA";
				else
					what = "DMA";
			else
				what = "???";

		FUNC4(FUNC11(host->mmc),
			"%s TIMEOUT, hardware stucked STATUS = 0x%04x IMASK = 0x%04x\n",
			what, stat,
			FUNC13(host->base + MMC_REG_INT_MASK));
		FUNC4(FUNC11(host->mmc),
			"CMD_DAT_CONT = 0x%04x, MMC_BLK_LEN = 0x%04x, MMC_NOB = 0x%04x, DMA_CCR = 0x%08x\n",
			FUNC13(host->base + MMC_REG_CMD_DAT_CONT),
			FUNC13(host->base + MMC_REG_BLK_LEN),
			FUNC13(host->base + MMC_REG_NOB),
			FUNC0(host->dma));
		FUNC4(FUNC11(host->mmc), "CMD%d, prevCMD%d, bus %d-bit, dma_size = 0x%x\n",
			host->cmd ? host->cmd->opcode : 0,
			host->prev_cmd_code,
			1 << host->actual_bus_width, host->dma_size);
	}

	if (!host->present || timeout)
		host->status_reg = STATUS_TIME_OUT_RESP | STATUS_TIME_OUT_READ |
			STATUS_CRC_READ_ERR | STATUS_CRC_WRITE_ERR;

	if (FUNC15(IMXMCI_PEND_IRQ_b, &host->pending_events) || timeout) {
		FUNC3(IMXMCI_PEND_IRQ_b, &host->pending_events);

		stat = FUNC13(host->base + MMC_REG_STATUS);
		/*
		 * This is not required in theory, but there is chance to miss some flag
		 * which clears automatically by mask write, FreeScale original code keeps
		 * stat from IRQ time so do I
		 */
		stat |= host->status_reg;

		if (FUNC15(IMXMCI_PEND_CPU_DATA_b, &host->pending_events))
			stat &= ~STATUS_CRC_READ_ERR;

		if (FUNC15(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events)) {
			FUNC5(host, &stat,
						    STATUS_END_CMD_RESP | STATUS_ERR_MASK,
						    20, "imxmci_tasklet_fnc resp (ERRATUM #4)");
		}

		if (stat & (STATUS_END_CMD_RESP | STATUS_ERR_MASK)) {
			if (FUNC14(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events))
				FUNC6(host, stat);
			if (host->data && (stat & STATUS_ERR_MASK))
				FUNC8(host, stat);
		}

		if (FUNC15(IMXMCI_PEND_CPU_DATA_b, &host->pending_events)) {
			stat |= FUNC13(host->base + MMC_REG_STATUS);
			if (FUNC7(host, &stat)) {
				if (FUNC14(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events))
					FUNC6(host, stat);
				FUNC1(IMXMCI_PEND_IRQ_m|IMXMCI_PEND_CPU_DATA_m,
						  &host->pending_events);
				FUNC8(host, stat);
			}
		}
	}

	if (FUNC15(IMXMCI_PEND_DMA_END_b, &host->pending_events) &&
	    !FUNC15(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events)) {

		stat = FUNC13(host->base + MMC_REG_STATUS);
		/* Same as above */
		stat |= host->status_reg;

		if (host->dma_dir == DMA_TO_DEVICE)
			data_dir_mask = STATUS_WRITE_OP_DONE;
		else
			data_dir_mask = STATUS_DATA_TRANS_DONE;

		if (stat & data_dir_mask) {
			FUNC3(IMXMCI_PEND_DMA_END_b, &host->pending_events);
			FUNC8(host, stat);
		}
	}

	if (FUNC14(IMXMCI_PEND_CARD_XCHG_b, &host->pending_events)) {

		if (host->cmd)
			FUNC6(host, STATUS_TIME_OUT_RESP);

		if (host->data)
			FUNC8(host, STATUS_TIME_OUT_READ |
					 STATUS_CRC_READ_ERR | STATUS_CRC_WRITE_ERR);

		if (host->req)
			FUNC9(host, host->req);

		FUNC10(host->mmc, FUNC12(100));

	}
}