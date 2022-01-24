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
typedef  int u8 ;
typedef  int u32 ;
struct mg_host {unsigned int error; scalar_t__ dev_base; TYPE_1__* dev; } ;
struct mg_drv_data {scalar_t__ use_polling; } ;
struct TYPE_2__ {struct mg_drv_data* platform_data; } ;

/* Variables and functions */
 int ATA_BUSY ; 
 int ATA_DRQ ; 
 int ATA_ERR ; 
 unsigned int MG_ERR_INV_STAT ; 
 unsigned int MG_ERR_NONE ; 
 unsigned int MG_ERR_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MG_REG_STATUS ; 
 int MG_STAT_READY ; 
 int FUNC1 (scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct mg_host*) ; 
 unsigned long FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC6(struct mg_host *host, u32 expect, u32 msec)
{
	u8 status;
	unsigned long expire, cur_jiffies;
	struct mg_drv_data *prv_data = host->dev->platform_data;

	host->error = MG_ERR_NONE;
	expire = jiffies + FUNC3(msec);

	/* These 2 times dummy status read prevents reading invalid
	 * status. A very little time (3 times of mflash operating clk)
	 * is required for busy bit is set. Use dummy read instead of
	 * busy wait, because mflash's PLL is machine dependent.
	 */
	if (prv_data->use_polling) {
		status = FUNC1((unsigned long)host->dev_base + MG_REG_STATUS);
		status = FUNC1((unsigned long)host->dev_base + MG_REG_STATUS);
	}

	status = FUNC1((unsigned long)host->dev_base + MG_REG_STATUS);

	do {
		cur_jiffies = jiffies;
		if (status & ATA_BUSY) {
			if (expect == ATA_BUSY)
				break;
		} else {
			/* Check the error condition! */
			if (status & ATA_ERR) {
				FUNC2("mg_wait", status, host);
				break;
			}

			if (expect == MG_STAT_READY)
				if (FUNC0(status))
					break;

			if (expect == ATA_DRQ)
				if (status & ATA_DRQ)
					break;
		}
		if (!msec) {
			FUNC2("not ready", status, host);
			return MG_ERR_INV_STAT;
		}

		status = FUNC1((unsigned long)host->dev_base + MG_REG_STATUS);
	} while (FUNC5(cur_jiffies, expire));

	if (FUNC4(cur_jiffies, expire) && msec)
		host->error = MG_ERR_TIMEOUT;

	return host->error;
}