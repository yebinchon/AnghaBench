#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct scatterlist {int dummy; } ;
struct mmc_data {struct scatterlist* sg; } ;
struct TYPE_8__ {int len; size_t index; int offset; } ;
struct TYPE_6__ {size_t len; } ;
struct au1xmmc_host {int flags; int /*<<< orphan*/  data_task; TYPE_4__ pio; TYPE_3__* pdev; TYPE_2__ dma; TYPE_1__* mrq; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {struct mmc_data* data; } ;

/* Variables and functions */
 int AU1XMMC_MAX_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int HOST_F_RECV ; 
 int HOST_F_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_CONFIG_NE ; 
 int SD_STATUS_NE ; 
 int SD_STATUS_RC ; 
 int SD_STATUS_RO ; 
 int SD_STATUS_RU ; 
 int /*<<< orphan*/  FUNC4 (struct au1xmmc_host*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct scatterlist*) ; 
 unsigned char* FUNC7 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct au1xmmc_host *host)
{
	struct mmc_data *data;
	int max, count, sg_len = 0;
	unsigned char *sg_ptr = NULL;
	u32 status, val;
	struct scatterlist *sg;

	data = host->mrq->data;

	if (!(host->flags & HOST_F_RECV))
		return;

	max = host->pio.len;

	if (host->pio.index < host->dma.len) {
		sg = &data->sg[host->pio.index];
		sg_ptr = FUNC7(sg) + host->pio.offset;

		/* This is the space left inside the buffer */
		sg_len = FUNC6(&data->sg[host->pio.index]) - host->pio.offset;

		/* Check if we need less than the size of the sg_buffer */
		if (sg_len < max)
			max = sg_len;
	}

	if (max > AU1XMMC_MAX_TRANSFER)
		max = AU1XMMC_MAX_TRANSFER;

	for (count = 0; count < max; count++) {
		status = FUNC5(FUNC2(host));

		if (!(status & SD_STATUS_NE))
			break;

		if (status & SD_STATUS_RC) {
			FUNC0("RX CRC Error [%d + %d].\n", host->pdev->id,
					host->pio.len, count);
			break;
		}

		if (status & SD_STATUS_RO) {
			FUNC0("RX Overrun [%d + %d]\n", host->pdev->id,
					host->pio.len, count);
			break;
		}
		else if (status & SD_STATUS_RU) {
			FUNC0("RX Underrun [%d + %d]\n", host->pdev->id,
					host->pio.len,	count);
			break;
		}

		val = FUNC5(FUNC1(host));

		if (sg_ptr)
			*sg_ptr++ = (unsigned char)(val & 0xFF);
	}

	host->pio.len -= count;
	host->pio.offset += count;

	if (sg_len && count == sg_len) {
		host->pio.index++;
		host->pio.offset = 0;
	}

	if (host->pio.len == 0) {
		/* IRQ_OFF(host, SD_CONFIG_RA | SD_CONFIG_RF); */
		FUNC3(host, SD_CONFIG_NE);

		if (host->flags & HOST_F_STOP)
			FUNC4(host);

		FUNC8(&host->data_task);
	}
}