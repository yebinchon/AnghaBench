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
struct mg_host {scalar_t__ dev_base; scalar_t__ rst; scalar_t__ rstout; int /*<<< orphan*/  irq; int /*<<< orphan*/  major; scalar_t__ breq; scalar_t__ gd; int /*<<< orphan*/  timer; } ;
struct mg_drv_data {scalar_t__ dev_attr; int /*<<< orphan*/  use_polling; struct mg_host* host; } ;

/* Variables and functions */
 scalar_t__ MG_BOOT_DEV ; 
 int /*<<< orphan*/  MG_DISK_NAME ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mg_host*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_host*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *plat_dev)
{
	struct mg_drv_data *prv_data = plat_dev->dev.platform_data;
	struct mg_host *host = prv_data->host;
	int err = 0;

	/* delete timer */
	FUNC2(&host->timer);

	/* remove disk */
	if (host->gd) {
		FUNC1(host->gd);
		FUNC7(host->gd);
	}
	/* remove queue */
	if (host->breq)
		FUNC0(host->breq);

	/* unregister blk device */
	FUNC8(host->major, MG_DISK_NAME);

	/* free irq */
	if (!prv_data->use_polling)
		FUNC3(host->irq, host);

	/* free reset-out pin */
	if (prv_data->dev_attr != MG_BOOT_DEV)
		FUNC4(host->rstout);

	/* free rst pin */
	if (host->rst)
		FUNC4(host->rst);

	/* unmap io */
	if (host->dev_base)
		FUNC5(host->dev_base);

	/* free mg_host */
	FUNC6(host);

	return err;
}