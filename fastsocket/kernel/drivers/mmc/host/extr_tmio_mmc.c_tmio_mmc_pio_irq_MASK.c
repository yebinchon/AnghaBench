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
struct tmio_mmc_host {unsigned int sg_off; TYPE_1__* sg_ptr; struct mmc_data* data; } ;
struct mmc_data {unsigned int blksz; int flags; } ;
struct TYPE_2__ {unsigned int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_SD_DATA_PORT ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ,unsigned short*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int /*<<< orphan*/ ,unsigned short*,unsigned int) ; 
 unsigned int FUNC3 (struct tmio_mmc_host*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmio_mmc_host*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*) ; 

__attribute__((used)) static inline void FUNC6(struct tmio_mmc_host *host)
{
	struct mmc_data *data = host->data;
	unsigned short *buf;
	unsigned int count;
	unsigned long flags;

	if (!data) {
		FUNC0("Spurious PIO IRQ\n");
		return;
	}

	buf = (unsigned short *)(FUNC3(host, &flags) +
	      host->sg_off);

	count = host->sg_ptr->length - host->sg_off;
	if (count > data->blksz)
		count = data->blksz;

	FUNC0("count: %08x offset: %08x flags %08x\n",
	    count, host->sg_off, data->flags);

	/* Transfer the data */
	if (data->flags & MMC_DATA_READ)
		FUNC1(host, CTL_SD_DATA_PORT, buf, count >> 1);
	else
		FUNC2(host, CTL_SD_DATA_PORT, buf, count >> 1);

	host->sg_off += count;

	FUNC4(host, &flags);

	if (host->sg_off == host->sg_ptr->length)
		FUNC5(host);

	return;
}