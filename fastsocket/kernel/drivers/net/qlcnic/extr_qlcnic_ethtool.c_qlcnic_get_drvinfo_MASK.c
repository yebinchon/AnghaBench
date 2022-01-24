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
struct qlcnic_adapter {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  version; int /*<<< orphan*/  driver; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_FW_VERSION_MAJOR ; 
 int /*<<< orphan*/  QLCNIC_FW_VERSION_MINOR ; 
 int /*<<< orphan*/  QLCNIC_FW_VERSION_SUB ; 
 int /*<<< orphan*/  QLCNIC_LINUX_VERSIONID ; 
 int FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlcnic_driver_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev, struct ethtool_drvinfo *drvinfo)
{
	struct qlcnic_adapter *adapter = FUNC1(dev);
	u32 fw_major, fw_minor, fw_build;
	fw_major = FUNC0(adapter, QLCNIC_FW_VERSION_MAJOR);
	fw_minor = FUNC0(adapter, QLCNIC_FW_VERSION_MINOR);
	fw_build = FUNC0(adapter, QLCNIC_FW_VERSION_SUB);
	FUNC3(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		"%d.%d.%d", fw_major, fw_minor, fw_build);

	FUNC4(drvinfo->bus_info, FUNC2(adapter->pdev),
		sizeof(drvinfo->bus_info));
	FUNC4(drvinfo->driver, qlcnic_driver_name, sizeof(drvinfo->driver));
	FUNC4(drvinfo->version, QLCNIC_LINUX_VERSIONID,
		sizeof(drvinfo->version));
}