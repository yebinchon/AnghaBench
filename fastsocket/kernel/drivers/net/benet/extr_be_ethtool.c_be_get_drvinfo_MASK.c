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
struct ethtool_drvinfo {scalar_t__ eedump_len; scalar_t__ regdump_len; scalar_t__ testinfo_len; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct be_adapter {char* fw_ver; char* fw_on_flash; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 char* DRV_NAME ; 
 char* DRV_VER ; 
 int /*<<< orphan*/  FW_VER_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC1 (struct net_device*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
				struct ethtool_drvinfo *drvinfo)
{
	struct be_adapter *adapter = FUNC1(netdev);

	FUNC4(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
	FUNC4(drvinfo->version, DRV_VER, sizeof(drvinfo->version));
	if (!FUNC0(adapter->fw_ver, adapter->fw_on_flash, FW_VER_LEN))
		FUNC4(drvinfo->fw_version, adapter->fw_ver,
			sizeof(drvinfo->fw_version));
	else
		FUNC3(drvinfo->fw_version, sizeof(drvinfo->fw_version),
			 "%s [%s]", adapter->fw_ver, adapter->fw_on_flash);

	FUNC4(drvinfo->bus_info, FUNC2(adapter->pdev),
		sizeof(drvinfo->bus_info));
	drvinfo->testinfo_len = 0;
	drvinfo->regdump_len = 0;
	drvinfo->eedump_len = 0;
}