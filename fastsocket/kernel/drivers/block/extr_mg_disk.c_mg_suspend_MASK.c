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
struct TYPE_2__ {struct mg_drv_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mg_host {scalar_t__ dev_base; } ;
struct mg_drv_data {int /*<<< orphan*/  use_polling; struct mg_host* host; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_NIEN ; 
 int EIO ; 
 int /*<<< orphan*/  MG_CMD_SLEEP ; 
 scalar_t__ MG_REG_COMMAND ; 
 scalar_t__ MG_REG_DRV_CTRL ; 
 int /*<<< orphan*/  MG_STAT_READY ; 
 int /*<<< orphan*/  MG_TMAX_CONF_TO_CMD ; 
 scalar_t__ FUNC0 (struct mg_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *plat_dev, pm_message_t state)
{
	struct mg_drv_data *prv_data = plat_dev->dev.platform_data;
	struct mg_host *host = prv_data->host;

	if (FUNC0(host, MG_STAT_READY, MG_TMAX_CONF_TO_CMD))
		return -EIO;

	if (!prv_data->use_polling)
		FUNC2(ATA_NIEN, (unsigned long)host->dev_base + MG_REG_DRV_CTRL);

	FUNC2(MG_CMD_SLEEP, (unsigned long)host->dev_base + MG_REG_COMMAND);
	/* wait until mflash deep sleep */
	FUNC1(1);

	if (FUNC0(host, MG_STAT_READY, MG_TMAX_CONF_TO_CMD)) {
		if (!prv_data->use_polling)
			FUNC2(0, (unsigned long)host->dev_base + MG_REG_DRV_CTRL);
		return -EIO;
	}

	return 0;
}