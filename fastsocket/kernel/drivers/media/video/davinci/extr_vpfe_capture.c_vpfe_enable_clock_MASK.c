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
struct vpfe_device {TYPE_1__* pdev; struct vpfe_config* cfg; } ;
struct vpfe_config {int /*<<< orphan*/ * slaveclk; int /*<<< orphan*/ * vpssclk; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct vpfe_device *vpfe_dev)
{
	struct vpfe_config *vpfe_cfg = vpfe_dev->cfg;
	int ret = -ENOENT;

	vpfe_cfg->vpssclk = FUNC1(vpfe_dev->pdev, "vpss_master");
	if (NULL == vpfe_cfg->vpssclk) {
		FUNC3(vpfe_dev->pdev->driver, "No clock defined for"
			 "vpss_master\n");
		return ret;
	}

	if (FUNC0(vpfe_cfg->vpssclk)) {
		FUNC3(vpfe_dev->pdev->driver,
			"vpfe vpss master clock not enabled\n");
		goto out;
	}
	FUNC4(vpfe_dev->pdev->driver,
		 "vpfe vpss master clock enabled\n");

	vpfe_cfg->slaveclk = FUNC1(vpfe_dev->pdev, "vpss_slave");
	if (NULL == vpfe_cfg->slaveclk) {
		FUNC3(vpfe_dev->pdev->driver,
			"No clock defined for vpss slave\n");
		goto out;
	}

	if (FUNC0(vpfe_cfg->slaveclk)) {
		FUNC3(vpfe_dev->pdev->driver,
			 "vpfe vpss slave clock not enabled\n");
		goto out;
	}
	FUNC4(vpfe_dev->pdev->driver, "vpfe vpss slave clock enabled\n");
	return 0;
out:
	if (vpfe_cfg->vpssclk)
		FUNC2(vpfe_cfg->vpssclk);
	if (vpfe_cfg->slaveclk)
		FUNC2(vpfe_cfg->slaveclk);

	return -1;
}