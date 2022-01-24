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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_host {int dummy; } ;
struct mmc_command {int flags; int /*<<< orphan*/  resp; scalar_t__ arg; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMC_ALL_SEND_CID ; 
 int MMC_CMD_BCR ; 
 int /*<<< orphan*/  MMC_CMD_RETRIES ; 
 int MMC_RSP_R2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_command*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mmc_host*,struct mmc_command*,int /*<<< orphan*/ ) ; 

int FUNC4(struct mmc_host *host, u32 *cid)
{
	int err;
	struct mmc_command cmd;

	FUNC0(!host);
	FUNC0(!cid);

	FUNC2(&cmd, 0, sizeof(struct mmc_command));

	cmd.opcode = MMC_ALL_SEND_CID;
	cmd.arg = 0;
	cmd.flags = MMC_RSP_R2 | MMC_CMD_BCR;

	err = FUNC3(host, &cmd, MMC_CMD_RETRIES);
	if (err)
		return err;

	FUNC1(cid, cmd.resp, sizeof(u32) * 4);

	return 0;
}