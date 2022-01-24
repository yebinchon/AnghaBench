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
struct niu_vpd {int fcode_major; int fcode_minor; } ;
struct niu {int /*<<< orphan*/  pdev; TYPE_1__* parent; struct niu_vpd vpd; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {scalar_t__ plat_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int /*<<< orphan*/  DRV_MODULE_VERSION ; 
 scalar_t__ PLAT_TYPE_NIU ; 
 struct niu* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
			    struct ethtool_drvinfo *info)
{
	struct niu *np = FUNC0(dev);
	struct niu_vpd *vpd = &np->vpd;

	FUNC3(info->driver, DRV_MODULE_NAME);
	FUNC3(info->version, DRV_MODULE_VERSION);
	FUNC2(info->fw_version, "%d.%d",
		vpd->fcode_major, vpd->fcode_minor);
	if (np->parent->plat_type != PLAT_TYPE_NIU)
		FUNC3(info->bus_info, FUNC1(np->pdev));
}