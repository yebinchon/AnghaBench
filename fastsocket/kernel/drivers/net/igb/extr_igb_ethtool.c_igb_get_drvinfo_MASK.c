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
struct igb_adapter {int /*<<< orphan*/  pdev; int /*<<< orphan*/  fw_version; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  eedump_len; int /*<<< orphan*/  regdump_len; int /*<<< orphan*/  testinfo_len; int /*<<< orphan*/  n_stats; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGB_STATS_LEN ; 
 int /*<<< orphan*/  IGB_TEST_LEN ; 
 int /*<<< orphan*/  igb_driver_name ; 
 int /*<<< orphan*/  igb_driver_version ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct igb_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
			    struct ethtool_drvinfo *drvinfo)
{
	struct igb_adapter *adapter = FUNC2(netdev);

	FUNC4(drvinfo->driver,  igb_driver_name, sizeof(drvinfo->driver));
	FUNC4(drvinfo->version, igb_driver_version, sizeof(drvinfo->version));

	/* EEPROM image version # is reported as firmware version # for
	 * 82575 controllers
	 */
	FUNC4(drvinfo->fw_version, adapter->fw_version,
		sizeof(drvinfo->fw_version));
	FUNC4(drvinfo->bus_info, FUNC3(adapter->pdev),
		sizeof(drvinfo->bus_info));
	drvinfo->n_stats = IGB_STATS_LEN;
	drvinfo->testinfo_len = IGB_TEST_LEN;
	drvinfo->regdump_len = FUNC1(netdev);
	drvinfo->eedump_len = FUNC0(netdev);
}