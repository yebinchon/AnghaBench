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
struct via_crdr_mmc_host {int /*<<< orphan*/  finish_tasklet; int /*<<< orphan*/  mmc; struct mmc_data* data; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int flags; scalar_t__ stop; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct via_crdr_mmc_host*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct via_crdr_mmc_host *host)
{
	struct mmc_data *data;

	FUNC0(!host->data);

	data = host->data;
	host->data = NULL;

	if (data->error)
		data->bytes_xfered = 0;
	else
		data->bytes_xfered = data->blocks * data->blksz;

	FUNC1(FUNC2(host->mmc), data->sg, data->sg_len,
		((data->flags & MMC_DATA_READ) ?
		PCI_DMA_FROMDEVICE : PCI_DMA_TODEVICE));

	if (data->stop)
		FUNC4(host, data->stop);
	else
		FUNC3(&host->finish_tasklet);
}