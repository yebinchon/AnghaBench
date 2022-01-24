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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int eeprom_verh; int eeprom_verl; int /*<<< orphan*/  pdev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  regdump_len; int /*<<< orphan*/  testinfo_len; int /*<<< orphan*/  n_stats; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_STATS_LEN ; 
 int /*<<< orphan*/  IXGBE_TEST_LEN ; 
 int /*<<< orphan*/  ixgbe_driver_name ; 
 int /*<<< orphan*/  ixgbe_driver_version ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct ixgbe_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
                              struct ethtool_drvinfo *drvinfo)
{
	struct ixgbe_adapter *adapter = FUNC1(netdev);
	u32 nvm_track_id;

	FUNC4(drvinfo->driver, ixgbe_driver_name, sizeof(drvinfo->driver));
	FUNC4(drvinfo->version, ixgbe_driver_version,
		sizeof(drvinfo->version));

	nvm_track_id = (adapter->eeprom_verh << 16) |
			adapter->eeprom_verl;
	FUNC3(drvinfo->fw_version, sizeof(drvinfo->fw_version), "0x%08x",
		 nvm_track_id);

	FUNC4(drvinfo->bus_info, FUNC2(adapter->pdev),
		sizeof(drvinfo->bus_info));
	drvinfo->n_stats = IXGBE_STATS_LEN;
	drvinfo->testinfo_len = IXGBE_TEST_LEN;
	drvinfo->regdump_len = FUNC0(netdev);
}