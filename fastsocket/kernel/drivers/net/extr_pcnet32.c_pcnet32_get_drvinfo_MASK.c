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
struct pcnet32_private {scalar_t__ pci_dev; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 struct pcnet32_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
				struct ethtool_drvinfo *info)
{
	struct pcnet32_private *lp = FUNC0(dev);

	FUNC3(info->driver, DRV_NAME);
	FUNC3(info->version, DRV_VERSION);
	if (lp->pci_dev)
		FUNC3(info->bus_info, FUNC1(lp->pci_dev));
	else
		FUNC2(info->bus_info, "VLB 0x%lx", dev->base_addr);
}