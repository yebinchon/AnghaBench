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
struct scatterlist {int dummy; } ;
struct mmc_request {int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; scalar_t__ arg; int /*<<< orphan*/  opcode; struct mmc_request* data; struct mmc_request* cmd; } ;
struct mmc_data {int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; scalar_t__ arg; int /*<<< orphan*/  opcode; struct mmc_data* data; struct mmc_data* cmd; } ;
struct mmc_command {int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; scalar_t__ arg; int /*<<< orphan*/  opcode; struct mmc_command* data; struct mmc_command* cmd; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MMC_CMD_ADTC ; 
 int MMC_DATA_READ ; 
 int MMC_RSP_R1 ; 
 int MMC_RSP_SPI_R1 ; 
 int /*<<< orphan*/  SD_APP_SEND_SCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_request*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_request*,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 

int FUNC7(struct mmc_card *card, u32 *scr)
{
	int err;
	struct mmc_request mrq;
	struct mmc_command cmd;
	struct mmc_data data;
	struct scatterlist sg;

	FUNC0(!card);
	FUNC0(!card->host);
	FUNC0(!scr);

	/* NOTE: caller guarantees scr is heap-allocated */

	err = FUNC3(card->host, card);
	if (err)
		return err;

	FUNC2(&mrq, 0, sizeof(struct mmc_request));
	FUNC2(&cmd, 0, sizeof(struct mmc_command));
	FUNC2(&data, 0, sizeof(struct mmc_data));

	mrq.cmd = &cmd;
	mrq.data = &data;

	cmd.opcode = SD_APP_SEND_SCR;
	cmd.arg = 0;
	cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;

	data.blksz = 8;
	data.blocks = 1;
	data.flags = MMC_DATA_READ;
	data.sg = &sg;
	data.sg_len = 1;

	FUNC6(&sg, scr, 8);

	FUNC4(&data, card);

	FUNC5(card->host, &mrq);

	if (cmd.error)
		return cmd.error;
	if (data.error)
		return data.error;

	scr[0] = FUNC1(scr[0]);
	scr[1] = FUNC1(scr[1]);

	return 0;
}