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
struct vpfe_config {int /*<<< orphan*/  slaveclk; int /*<<< orphan*/  vpssclk; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct vpfe_device *vpfe_dev)
{
	struct vpfe_config *vpfe_cfg = vpfe_dev->cfg;

	FUNC0(vpfe_cfg->vpssclk);
	FUNC1(vpfe_cfg->vpssclk);
	FUNC0(vpfe_cfg->slaveclk);
	FUNC1(vpfe_cfg->slaveclk);
	FUNC2(vpfe_dev->pdev->driver,
		 "vpfe vpss master & slave clocks disabled\n");
}