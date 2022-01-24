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
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  eedump_len; int /*<<< orphan*/  regdump_len; scalar_t__ testinfo_len; scalar_t__ n_stats; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct atl1e_adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 char* atl1e_driver_name ; 
 char* atl1e_driver_version ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct atl1e_adapter* FUNC2 (struct net_device*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
		struct ethtool_drvinfo *drvinfo)
{
	struct atl1e_adapter *adapter = FUNC2(netdev);

	FUNC4(drvinfo->driver,  atl1e_driver_name, 32);
	FUNC4(drvinfo->version, atl1e_driver_version, 32);
	FUNC4(drvinfo->fw_version, "L1e", 32);
	FUNC4(drvinfo->bus_info, FUNC3(adapter->pdev), 32);
	drvinfo->n_stats = 0;
	drvinfo->testinfo_len = 0;
	drvinfo->regdump_len = FUNC1(netdev);
	drvinfo->eedump_len = FUNC0(netdev);
}