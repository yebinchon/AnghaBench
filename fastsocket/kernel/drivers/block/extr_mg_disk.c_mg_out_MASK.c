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
typedef  unsigned int u8 ;
struct mg_host {unsigned int error; void (* mg_do_intr ) (struct mg_host*) ;scalar_t__ dev_base; int /*<<< orphan*/  timer; TYPE_1__* dev; } ;
struct mg_drv_data {int /*<<< orphan*/  use_polling; } ;
struct TYPE_2__ {struct mg_drv_data* platform_data; } ;

/* Variables and functions */
 unsigned int ATA_DEVICE_OBS ; 
 unsigned int ATA_LBA ; 
 int HZ ; 
 unsigned int MG_ERR_NONE ; 
 scalar_t__ MG_REG_COMMAND ; 
 scalar_t__ MG_REG_CYL_HIGH ; 
 scalar_t__ MG_REG_CYL_LOW ; 
 scalar_t__ MG_REG_DRV_HEAD ; 
 scalar_t__ MG_REG_SECT_CNT ; 
 scalar_t__ MG_REG_SECT_NUM ; 
 scalar_t__ MG_RES_SEC ; 
 int /*<<< orphan*/  MG_STAT_READY ; 
 int /*<<< orphan*/  MG_TMAX_CONF_TO_CMD ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (struct mg_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC3(struct mg_host *host,
		unsigned int sect_num,
		unsigned int sect_cnt,
		unsigned int cmd,
		void (*intr_addr)(struct mg_host *))
{
	struct mg_drv_data *prv_data = host->dev->platform_data;

	if (FUNC0(host, MG_STAT_READY, MG_TMAX_CONF_TO_CMD))
		return host->error;

	if (!prv_data->use_polling) {
		host->mg_do_intr = intr_addr;
		FUNC1(&host->timer, jiffies + 3 * HZ);
	}
	if (MG_RES_SEC)
		sect_num += MG_RES_SEC;
	FUNC2((u8)sect_cnt, (unsigned long)host->dev_base + MG_REG_SECT_CNT);
	FUNC2((u8)sect_num, (unsigned long)host->dev_base + MG_REG_SECT_NUM);
	FUNC2((u8)(sect_num >> 8), (unsigned long)host->dev_base +
			MG_REG_CYL_LOW);
	FUNC2((u8)(sect_num >> 16), (unsigned long)host->dev_base +
			MG_REG_CYL_HIGH);
	FUNC2((u8)((sect_num >> 24) | ATA_LBA | ATA_DEVICE_OBS),
			(unsigned long)host->dev_base + MG_REG_DRV_HEAD);
	FUNC2(cmd, (unsigned long)host->dev_base + MG_REG_COMMAND);
	return MG_ERR_NONE;
}