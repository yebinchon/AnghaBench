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
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_host {int /*<<< orphan*/  claimed; } ;
struct mmc_command {int retries; int error; int /*<<< orphan*/ * data; struct mmc_request* resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 

int FUNC3(struct mmc_host *host, struct mmc_command *cmd, int retries)
{
	struct mmc_request mrq;

	FUNC0(!host->claimed);

	FUNC1(&mrq, 0, sizeof(struct mmc_request));

	FUNC1(cmd->resp, 0, sizeof(cmd->resp));
	cmd->retries = retries;

	mrq.cmd = cmd;
	cmd->data = NULL;

	FUNC2(host, &mrq);

	return cmd->error;
}