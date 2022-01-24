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
struct scatterlist {int dma_address; int length; int /*<<< orphan*/  offset; } ;
struct mmc_data {scalar_t__ sg_len; int blksz; struct scatterlist* sg; } ;
struct mmc_command {struct mmc_data* data; } ;
struct at91mci_host {scalar_t__ transfer_index; struct mmc_command* cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PDC_RCR ; 
 int /*<<< orphan*/  ATMEL_PDC_RNCR ; 
 int /*<<< orphan*/  ATMEL_PDC_RNPR ; 
 int /*<<< orphan*/  ATMEL_PDC_RPR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FUNC0 (struct at91mci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct at91mci_host*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC5(struct at91mci_host *host)
{
	int i;
	struct scatterlist *sg;
	struct mmc_command *cmd;
	struct mmc_data *data;

	FUNC3("pre dma read\n");

	cmd = host->cmd;
	if (!cmd) {
		FUNC3("no command\n");
		return;
	}

	data = cmd->data;
	if (!data) {
		FUNC3("no data\n");
		return;
	}

	for (i = 0; i < 2; i++) {
		/* nothing left to transfer */
		if (host->transfer_index >= data->sg_len) {
			FUNC3("Nothing left to transfer (index = %d)\n", host->transfer_index);
			break;
		}

		/* Check to see if this needs filling */
		if (i == 0) {
			if (FUNC0(host, ATMEL_PDC_RCR) != 0) {
				FUNC3("Transfer active in current\n");
				continue;
			}
		}
		else {
			if (FUNC0(host, ATMEL_PDC_RNCR) != 0) {
				FUNC3("Transfer active in next\n");
				continue;
			}
		}

		/* Setup the next transfer */
		FUNC3("Using transfer index %d\n", host->transfer_index);

		sg = &data->sg[host->transfer_index++];
		FUNC3("sg = %p\n", sg);

		sg->dma_address = FUNC2(NULL, FUNC4(sg), sg->offset, sg->length, DMA_FROM_DEVICE);

		FUNC3("dma address = %08X, length = %d\n", sg->dma_address, sg->length);

		if (i == 0) {
			FUNC1(host, ATMEL_PDC_RPR, sg->dma_address);
			FUNC1(host, ATMEL_PDC_RCR, (data->blksz & 0x3) ? sg->length : sg->length / 4);
		}
		else {
			FUNC1(host, ATMEL_PDC_RNPR, sg->dma_address);
			FUNC1(host, ATMEL_PDC_RNCR, (data->blksz & 0x3) ? sg->length : sg->length / 4);
		}
	}

	FUNC3("pre dma read done\n");
}