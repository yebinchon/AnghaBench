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
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;
struct mmc_request {int arg; int flags; unsigned int blksz; unsigned int blocks; int sg_len; int error; int* resp; struct scatterlist* sg; int /*<<< orphan*/  opcode; struct mmc_request* data; struct mmc_request* cmd; } ;
struct mmc_data {int arg; int flags; unsigned int blksz; unsigned int blocks; int sg_len; int error; int* resp; struct scatterlist* sg; int /*<<< orphan*/  opcode; struct mmc_data* data; struct mmc_data* cmd; } ;
struct mmc_command {int arg; int flags; unsigned int blksz; unsigned int blocks; int sg_len; int error; int* resp; struct scatterlist* sg; int /*<<< orphan*/  opcode; struct mmc_command* data; struct mmc_command* cmd; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ERANGE ; 
 int MMC_CMD_ADTC ; 
 int MMC_DATA_READ ; 
 int MMC_DATA_WRITE ; 
 int MMC_RSP_R5 ; 
 int MMC_RSP_SPI_R5 ; 
 int R5_ERROR ; 
 int R5_FUNCTION_NUMBER ; 
 int R5_OUT_OF_RANGE ; 
 int /*<<< orphan*/  SD_IO_RW_EXTENDED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_request*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_request*,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC7(struct mmc_card *card, int write, unsigned fn,
	unsigned addr, int incr_addr, u8 *buf, unsigned blocks, unsigned blksz)
{
	struct mmc_request mrq;
	struct mmc_command cmd;
	struct mmc_data data;
	struct scatterlist sg;

	FUNC0(!card);
	FUNC0(fn > 7);
	FUNC0(blocks == 1 && blksz > 512);
	FUNC1(blocks == 0);
	FUNC1(blksz == 0);

	/* sanity check */
	if (addr & ~0x1FFFF)
		return -EINVAL;

	FUNC2(&mrq, 0, sizeof(struct mmc_request));
	FUNC2(&cmd, 0, sizeof(struct mmc_command));
	FUNC2(&data, 0, sizeof(struct mmc_data));

	mrq.cmd = &cmd;
	mrq.data = &data;

	cmd.opcode = SD_IO_RW_EXTENDED;
	cmd.arg = write ? 0x80000000 : 0x00000000;
	cmd.arg |= fn << 28;
	cmd.arg |= incr_addr ? 0x04000000 : 0x00000000;
	cmd.arg |= addr << 9;
	if (blocks == 1 && blksz <= 512)
		cmd.arg |= (blksz == 512) ? 0 : blksz;	/* byte mode */
	else
		cmd.arg |= 0x08000000 | blocks;		/* block mode */
	cmd.flags = MMC_RSP_SPI_R5 | MMC_RSP_R5 | MMC_CMD_ADTC;

	data.blksz = blksz;
	data.blocks = blocks;
	data.flags = write ? MMC_DATA_WRITE : MMC_DATA_READ;
	data.sg = &sg;
	data.sg_len = 1;

	FUNC6(&sg, buf, blksz * blocks);

	FUNC4(&data, card);

	FUNC5(card->host, &mrq);

	if (cmd.error)
		return cmd.error;
	if (data.error)
		return data.error;

	if (FUNC3(card->host)) {
		/* host driver already reported errors */
	} else {
		if (cmd.resp[0] & R5_ERROR)
			return -EIO;
		if (cmd.resp[0] & R5_FUNCTION_NUMBER)
			return -EINVAL;
		if (cmd.resp[0] & R5_OUT_OF_RANGE)
			return -ERANGE;
	}

	return 0;
}