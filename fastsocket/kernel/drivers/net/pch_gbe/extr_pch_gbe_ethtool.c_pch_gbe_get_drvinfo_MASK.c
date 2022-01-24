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
struct pch_gbe_adapter {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  regdump_len; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  pch_driver_version ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
				 struct ethtool_drvinfo *drvinfo)
{
	struct pch_gbe_adapter *adapter = FUNC0(netdev);

	FUNC3(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
	FUNC3(drvinfo->version, pch_driver_version, sizeof(drvinfo->version));
	FUNC3(drvinfo->bus_info, FUNC2(adapter->pdev),
		sizeof(drvinfo->bus_info));
	drvinfo->regdump_len = FUNC1(netdev);
}