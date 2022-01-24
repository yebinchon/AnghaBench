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
struct mmc_request {TYPE_1__* data; } ;
struct mmc_data {int dummy; } ;
struct mmc_command {int flags; int* resp; int /*<<< orphan*/  error; } ;
struct imxmci_host {int /*<<< orphan*/  mmc; struct mmc_request* req; int /*<<< orphan*/  dma; int /*<<< orphan*/  pending_events; scalar_t__ base; struct mmc_command* cmd; struct mmc_data* data; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  IMXMCI_PEND_DMA_DATA_b ; 
 int MMC_DATA_WRITE ; 
 scalar_t__ MMC_REG_RES_FIFO ; 
 scalar_t__ MMC_REG_STATUS ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_CRC ; 
 int MMC_RSP_PRESENT ; 
 int /*<<< orphan*/  STATUS_APPL_BUFF_FE ; 
 unsigned int STATUS_ERR_MASK ; 
 unsigned int STATUS_RESP_CRC_ERR ; 
 unsigned int STATUS_TIME_OUT_RESP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct imxmci_host*,unsigned int*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct imxmci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct imxmci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct imxmci_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct imxmci_host *host, unsigned int stat)
{
	struct mmc_command *cmd = host->cmd;
	int i;
	u32 a, b, c;
	struct mmc_data *data = host->data;

	if (!cmd)
		return 0;

	host->cmd = NULL;

	if (stat & STATUS_TIME_OUT_RESP) {
		FUNC0(FUNC7(host->mmc), "CMD TIMEOUT\n");
		cmd->error = -ETIMEDOUT;
	} else if (stat & STATUS_RESP_CRC_ERR && cmd->flags & MMC_RSP_CRC) {
		FUNC0(FUNC7(host->mmc), "cmd crc error\n");
		cmd->error = -EILSEQ;
	}

	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136) {
			for (i = 0; i < 4; i++) {
				a = FUNC8(host->base + MMC_REG_RES_FIFO);
				b = FUNC8(host->base + MMC_REG_RES_FIFO);
				cmd->resp[i] = a << 16 | b;
			}
		} else {
			a = FUNC8(host->base + MMC_REG_RES_FIFO);
			b = FUNC8(host->base + MMC_REG_RES_FIFO);
			c = FUNC8(host->base + MMC_REG_RES_FIFO);
			cmd->resp[0] = a << 24 | b << 8 | c >> 8;
		}
	}

	FUNC0(FUNC7(host->mmc), "RESP 0x%08x, 0x%08x, 0x%08x, 0x%08x, error %d\n",
		cmd->resp[0], cmd->resp[1], cmd->resp[2], cmd->resp[3], cmd->error);

	if (data && !cmd->error && !(stat & STATUS_ERR_MASK)) {
		if (host->req->data->flags & MMC_DATA_WRITE) {

			/* Wait for FIFO to be empty before starting DMA write */

			stat = FUNC8(host->base + MMC_REG_STATUS);
			if (FUNC3(host, &stat,
							STATUS_APPL_BUFF_FE,
							40, "imxmci_cmd_done DMA WR") < 0) {
				cmd->error = -EIO;
				FUNC4(host, stat);
				if (host->req)
					FUNC5(host, host->req);
				FUNC1(FUNC7(host->mmc), "STATUS = 0x%04x\n",
					 stat);
				return 0;
			}

			if (FUNC9(IMXMCI_PEND_DMA_DATA_b, &host->pending_events))
				FUNC2(host->dma);
		}
	} else {
		struct mmc_request *req;
		FUNC6(host);
		req = host->req;

		if (data)
			FUNC4(host, stat);

		if (req)
			FUNC5(host, req);
		else
			FUNC1(FUNC7(host->mmc), "imxmci_cmd_done: no request to finish\n");
	}

	return 1;
}