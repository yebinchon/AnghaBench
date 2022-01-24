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
typedef  int /*<<< orphan*/  u8 ;
struct sdricoh_host {int app_cmd; struct device* dev; } ;
struct page {int dummy; } ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {size_t blksz; int blocks; int flags; size_t bytes_xfered; TYPE_1__* sg; int /*<<< orphan*/  sg_len; } ;
struct mmc_command {unsigned char opcode; int error; int flags; int* resp; int /*<<< orphan*/  arg; struct mmc_data* data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int offset; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int EINVAL ; 
 int MMC_DATA_READ ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_PRESENT ; 
 int /*<<< orphan*/  R208_DATAIO ; 
 scalar_t__ R20C_RESP ; 
 int /*<<< orphan*/  R21C_STATUS ; 
 int /*<<< orphan*/  R226_BLOCKSIZE ; 
 int /*<<< orphan*/  STATUS_TRANSFER_FINISHED ; 
 int /*<<< orphan*/  TRANSFER_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/ * FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct sdricoh_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,struct mmc_request*) ; 
 int FUNC7 (struct sdricoh_host*,int,int /*<<< orphan*/ *,size_t) ; 
 int FUNC8 (struct sdricoh_host*,unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sdricoh_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sdricoh_host*,scalar_t__) ; 
 int FUNC11 (struct sdricoh_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sdricoh_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sdricoh_host*,int /*<<< orphan*/ ,size_t) ; 
 struct page* FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC15(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct sdricoh_host *host = FUNC5(mmc);
	struct mmc_command *cmd = mrq->cmd;
	struct mmc_data *data = cmd->data;
	struct device *dev = host->dev;
	unsigned char opcode = cmd->opcode;
	int i;

	FUNC0(dev, "=============================\n");
	FUNC0(dev, "sdricoh_request opcode=%i\n", opcode);

	FUNC12(host, R21C_STATUS, 0x18);

	/* MMC_APP_CMDs need some special handling */
	if (host->app_cmd) {
		opcode |= 64;
		host->app_cmd = 0;
	} else if (opcode == 55)
		host->app_cmd = 1;

	/* read/write commands seem to require this */
	if (data) {
		FUNC13(host, R226_BLOCKSIZE, data->blksz);
		FUNC12(host, R208_DATAIO, 0);
	}

	cmd->error = FUNC8(host, opcode, cmd->arg);

	/* read response buffer */
	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136) {
			/* CRC is stripped so we need to do some shifting. */
			for (i = 0; i < 4; i++) {
				cmd->resp[i] =
				    FUNC11(host,
						  R20C_RESP + (3 - i) * 4) << 8;
				if (i != 3)
					cmd->resp[i] |=
					    FUNC10(host, R20C_RESP +
							  (3 - i) * 4 - 1);
			}
		} else
			cmd->resp[0] = FUNC11(host, R20C_RESP);
	}

	/* transfer data */
	if (data && cmd->error == 0) {
		FUNC0(dev, "transfer: blksz %i blocks %i sg_len %i "
			"sg length %i\n", data->blksz, data->blocks,
			data->sg_len, data->sg->length);

		/* enter data reading mode */
		FUNC12(host, R21C_STATUS, 0x837f031e);
		for (i = 0; i < data->blocks; i++) {
			size_t len = data->blksz;
			u8 *buf;
			struct page *page;
			int result;
			page = FUNC14(data->sg);

			buf = FUNC3(page) + data->sg->offset + (len * i);
			result =
				FUNC7(host,
					data->flags & MMC_DATA_READ, buf, len);
			FUNC4(page);
			FUNC2(page);
			if (result) {
				FUNC1(dev, "sdricoh_request: cmd %i "
					"block transfer failed\n", cmd->opcode);
				cmd->error = result;
				break;
			} else
				data->bytes_xfered += len;
		}

		FUNC12(host, R208_DATAIO, 1);

		if (FUNC9(host, STATUS_TRANSFER_FINISHED,
					TRANSFER_TIMEOUT)) {
			FUNC1(dev, "sdricoh_request: transfer end error\n");
			cmd->error = -EINVAL;
		}
	}
	/* FIXME check busy flag */

	FUNC6(mmc, mrq);
	FUNC0(dev, "=============================\n");
}