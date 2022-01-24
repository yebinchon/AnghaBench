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
typedef  int u8 ;
struct scatterlist {int dummy; } ;
struct mmc_request {int arg; int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int /*<<< orphan*/  opcode; struct mmc_request* data; struct mmc_request* cmd; } ;
struct mmc_data {int arg; int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int /*<<< orphan*/  opcode; struct mmc_data* data; struct mmc_data* cmd; } ;
struct mmc_command {int arg; int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int /*<<< orphan*/  opcode; struct mmc_command* data; struct mmc_command* cmd; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MMC_CMD_ADTC ; 
 int MMC_DATA_READ ; 
 int MMC_RSP_R1 ; 
 int MMC_RSP_SPI_R1 ; 
 int /*<<< orphan*/  SD_SWITCH ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_request*,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int*,int) ; 

int FUNC5(struct mmc_card *card, int mode, int group,
	u8 value, u8 *resp)
{
	struct mmc_request mrq;
	struct mmc_command cmd;
	struct mmc_data data;
	struct scatterlist sg;

	FUNC0(!card);
	FUNC0(!card->host);

	/* NOTE: caller guarantees resp is heap-allocated */

	mode = !!mode;
	value &= 0xF;

	FUNC1(&mrq, 0, sizeof(struct mmc_request));
	FUNC1(&cmd, 0, sizeof(struct mmc_command));
	FUNC1(&data, 0, sizeof(struct mmc_data));

	mrq.cmd = &cmd;
	mrq.data = &data;

	cmd.opcode = SD_SWITCH;
	cmd.arg = mode << 31 | 0x00FFFFFF;
	cmd.arg &= ~(0xF << (group * 4));
	cmd.arg |= value << (group * 4);
	cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;

	data.blksz = 64;
	data.blocks = 1;
	data.flags = MMC_DATA_READ;
	data.sg = &sg;
	data.sg_len = 1;

	FUNC4(&sg, resp, 64);

	FUNC2(&data, card);

	FUNC3(card->host, &mrq);

	if (cmd.error)
		return cmd.error;
	if (data.error)
		return data.error;

	return 0;
}