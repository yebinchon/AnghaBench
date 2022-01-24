#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s3cmci_host {int /*<<< orphan*/  dcnt; scalar_t__ base; scalar_t__ cmd_is_stop; int /*<<< orphan*/  ccnt; struct mmc_request* mrq; } ;
struct mmc_request {struct mmc_command* cmd; struct mmc_command* stop; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {int error; TYPE_1__* data; } ;
struct TYPE_4__ {int error; } ;

/* Variables and functions */
 scalar_t__ S3C2410_SDICMDSTAT ; 
 scalar_t__ S3C2410_SDIDSTA ; 
 scalar_t__ S3C2410_SDIFSTA ; 
 int /*<<< orphan*/  FUNC0 (struct s3cmci_host*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  dbg_err ; 
 struct s3cmci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3cmci_host*,struct mmc_command*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct s3cmci_host*,int) ; 
 scalar_t__ FUNC5 (struct s3cmci_host*) ; 
 int FUNC6 (struct s3cmci_host*,TYPE_1__*) ; 
 int FUNC7 (struct s3cmci_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct s3cmci_host*,struct mmc_command*) ; 
 int FUNC9 (struct s3cmci_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct mmc_host *mmc)
{
	struct s3cmci_host *host = FUNC1(mmc);
	struct mmc_request *mrq = host->mrq;
	struct mmc_command *cmd = host->cmd_is_stop ? mrq->stop : mrq->cmd;

	host->ccnt++;
	FUNC3(host, cmd, host->cmd_is_stop);

	/* Clear command, data and fifo status registers
	   Fifo clear only necessary on 2440, but doesn't hurt on 2410
	*/
	FUNC10(0xFFFFFFFF, host->base + S3C2410_SDICMDSTAT);
	FUNC10(0xFFFFFFFF, host->base + S3C2410_SDIDSTA);
	FUNC10(0xFFFFFFFF, host->base + S3C2410_SDIFSTA);

	if (cmd->data) {
		int res = FUNC9(host, cmd->data);

		host->dcnt++;

		if (res) {
			FUNC0(host, dbg_err, "setup data error %d\n", res);
			cmd->error = res;
			cmd->data->error = res;

			FUNC2(mmc, mrq);
			return;
		}

		if (FUNC5(host))
			res = FUNC6(host, cmd->data);
		else
			res = FUNC7(host, cmd->data);

		if (res) {
			FUNC0(host, dbg_err, "data prepare error %d\n", res);
			cmd->error = res;
			cmd->data->error = res;

			FUNC2(mmc, mrq);
			return;
		}
	}

	/* Send command */
	FUNC8(host, cmd);

	/* Enable Interrupt */
	FUNC4(host, true);
}