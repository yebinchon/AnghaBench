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
struct scatterlist {int length; int offset; int /*<<< orphan*/  dma_address; } ;
struct mmc_data {scalar_t__ sg_len; int /*<<< orphan*/  bytes_xfered; struct scatterlist* sg; } ;
struct mmc_command {struct mmc_data* data; } ;
struct at91mci_host {scalar_t__ in_use_index; scalar_t__ transfer_index; struct mmc_command* cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_MCI_ENDRX ; 
 int /*<<< orphan*/  AT91_MCI_IDR ; 
 int /*<<< orphan*/  AT91_MCI_IER ; 
 int /*<<< orphan*/  AT91_MCI_RXBUFF ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  KM_BIO_SRC_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct at91mci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91mci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*) ; 
 unsigned int FUNC9 (unsigned int) ; 

__attribute__((used)) static void FUNC10(struct at91mci_host *host)
{
	struct mmc_command *cmd;
	struct mmc_data *data;

	FUNC7("post dma read\n");

	cmd = host->cmd;
	if (!cmd) {
		FUNC7("no command\n");
		return;
	}

	data = cmd->data;
	if (!data) {
		FUNC7("no data\n");
		return;
	}

	while (host->in_use_index < host->transfer_index) {
		struct scatterlist *sg;

		FUNC7("finishing index %d\n", host->in_use_index);

		sg = &data->sg[host->in_use_index++];

		FUNC7("Unmapping page %08X\n", sg->dma_address);

		FUNC3(NULL, sg->dma_address, sg->length, DMA_FROM_DEVICE);

		if (FUNC2()) {	/* AT91RM9200 errata */
			unsigned int *buffer;
			int index;

			/* Swap the contents of the buffer */
			buffer = FUNC5(FUNC8(sg), KM_BIO_SRC_IRQ) + sg->offset;
			FUNC7("buffer = %p, length = %d\n", buffer, sg->length);

			for (index = 0; index < (sg->length / 4); index++)
				buffer[index] = FUNC9(buffer[index]);

			FUNC6(buffer, KM_BIO_SRC_IRQ);
		}

		FUNC4(FUNC8(sg));

		data->bytes_xfered += sg->length;
	}

	/* Is there another transfer to trigger? */
	if (host->transfer_index < data->sg_len)
		FUNC0(host);
	else {
		FUNC1(host, AT91_MCI_IDR, AT91_MCI_ENDRX);
		FUNC1(host, AT91_MCI_IER, AT91_MCI_RXBUFF);
	}

	FUNC7("post dma read done\n");
}