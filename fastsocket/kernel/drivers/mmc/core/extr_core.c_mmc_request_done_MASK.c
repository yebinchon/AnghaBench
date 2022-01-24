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
struct mmc_request {int /*<<< orphan*/  (* done ) (struct mmc_request*) ;TYPE_3__* stop; TYPE_2__* data; struct mmc_command* cmd; } ;
struct mmc_host {int /*<<< orphan*/  led; TYPE_1__* ops; } ;
struct mmc_command {int error; int* resp; int /*<<< orphan*/  opcode; scalar_t__ retries; } ;
struct TYPE_6__ {int error; int* resp; int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {int /*<<< orphan*/  error; int /*<<< orphan*/  bytes_xfered; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* request ) (struct mmc_host*,struct mmc_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 int R1_SPI_ILLEGAL_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_request*) ; 

void FUNC6(struct mmc_host *host, struct mmc_request *mrq)
{
	struct mmc_command *cmd = mrq->cmd;
	int err = cmd->error;

	if (err && cmd->retries && FUNC1(host)) {
		if (cmd->resp[0] & R1_SPI_ILLEGAL_COMMAND)
			cmd->retries = 0;
	}

	if (err && cmd->retries) {
		FUNC3("%s: req failed (CMD%u): %d, retrying...\n",
			FUNC2(host), cmd->opcode, err);

		cmd->retries--;
		cmd->error = 0;
		host->ops->request(host, mrq);
	} else {
		FUNC0(host->led, LED_OFF);

		FUNC3("%s: req done (CMD%u): %d: %08x %08x %08x %08x\n",
			FUNC2(host), cmd->opcode, err,
			cmd->resp[0], cmd->resp[1],
			cmd->resp[2], cmd->resp[3]);

		if (mrq->data) {
			FUNC3("%s:     %d bytes transferred: %d\n",
				FUNC2(host),
				mrq->data->bytes_xfered, mrq->data->error);
		}

		if (mrq->stop) {
			FUNC3("%s:     (CMD%u): %d: %08x %08x %08x %08x\n",
				FUNC2(host), mrq->stop->opcode,
				mrq->stop->error,
				mrq->stop->resp[0], mrq->stop->resp[1],
				mrq->stop->resp[2], mrq->stop->resp[3]);
		}

		if (mrq->done)
			mrq->done(mrq);
	}
}