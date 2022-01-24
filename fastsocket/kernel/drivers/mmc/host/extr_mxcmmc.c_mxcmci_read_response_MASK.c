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
struct mxcmci_host {scalar_t__ base; int /*<<< orphan*/  mmc; struct mmc_command* cmd; } ;
struct mmc_command {int flags; int* resp; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ MMC_REG_RES_FIFO ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_CRC ; 
 int MMC_RSP_PRESENT ; 
 unsigned int STATUS_RESP_CRC_ERR ; 
 unsigned int STATUS_TIME_OUT_RESP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mxcmci_host *host, unsigned int stat)
{
	struct mmc_command *cmd = host->cmd;
	int i;
	u32 a, b, c;

	if (!cmd)
		return;

	if (stat & STATUS_TIME_OUT_RESP) {
		FUNC0(FUNC1(host->mmc), "CMD TIMEOUT\n");
		cmd->error = -ETIMEDOUT;
	} else if (stat & STATUS_RESP_CRC_ERR && cmd->flags & MMC_RSP_CRC) {
		FUNC0(FUNC1(host->mmc), "cmd crc error\n");
		cmd->error = -EILSEQ;
	}

	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136) {
			for (i = 0; i < 4; i++) {
				a = FUNC2(host->base + MMC_REG_RES_FIFO);
				b = FUNC2(host->base + MMC_REG_RES_FIFO);
				cmd->resp[i] = a << 16 | b;
			}
		} else {
			a = FUNC2(host->base + MMC_REG_RES_FIFO);
			b = FUNC2(host->base + MMC_REG_RES_FIFO);
			c = FUNC2(host->base + MMC_REG_RES_FIFO);
			cmd->resp[0] = a << 24 | b << 8 | c >> 8;
		}
	}
}