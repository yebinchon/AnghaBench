#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct scatterlist {int length; } ;
struct mmc_data {struct scatterlist* sg; } ;
struct TYPE_4__ {size_t index; int offset; int len; } ;
struct au1xmmc_host {int flags; int /*<<< orphan*/  data_task; TYPE_2__ pio; TYPE_1__* mrq; } ;
struct TYPE_3__ {struct mmc_data* data; } ;

/* Variables and functions */
 int AU1XMMC_MAX_TRANSFER ; 
 int HOST_F_STOP ; 
 int HOST_F_XMIT ; 
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_CONFIG_TH ; 
 int SD_STATUS_TH ; 
 int /*<<< orphan*/  FUNC3 (struct au1xmmc_host*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC7 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct au1xmmc_host *host)
{
	struct mmc_data *data;
	int sg_len, max, count;
	unsigned char *sg_ptr, val;
	u32 status;
	struct scatterlist *sg;

	data = host->mrq->data;

	if (!(host->flags & HOST_F_XMIT))
		return;

	/* This is the pointer to the data buffer */
	sg = &data->sg[host->pio.index];
	sg_ptr = FUNC7(sg) + host->pio.offset;

	/* This is the space left inside the buffer */
	sg_len = data->sg[host->pio.index].length - host->pio.offset;

	/* Check if we need less than the size of the sg_buffer */
	max = (sg_len > host->pio.len) ? host->pio.len : sg_len;
	if (max > AU1XMMC_MAX_TRANSFER)
		max = AU1XMMC_MAX_TRANSFER;

	for (count = 0; count < max; count++) {
		status = FUNC4(FUNC0(host));

		if (!(status & SD_STATUS_TH))
			break;

		val = *sg_ptr++;

		FUNC6((unsigned long)val, FUNC1(host));
		FUNC5();
	}

	host->pio.len -= count;
	host->pio.offset += count;

	if (count == sg_len) {
		host->pio.index++;
		host->pio.offset = 0;
	}

	if (host->pio.len == 0) {
		FUNC2(host, SD_CONFIG_TH);

		if (host->flags & HOST_F_STOP)
			FUNC3(host);

		FUNC8(&host->data_task);
	}
}