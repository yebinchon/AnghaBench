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
struct netxen_adapter {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  eedump_len; int /*<<< orphan*/  regdump_len; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETXEN_FW_VERSION_MAJOR ; 
 int /*<<< orphan*/  NETXEN_FW_VERSION_MINOR ; 
 int /*<<< orphan*/  NETXEN_FW_VERSION_SUB ; 
 int /*<<< orphan*/  NETXEN_NIC_LINUX_VERSIONID ; 
 int /*<<< orphan*/  NETXEN_NIC_REGS_LEN ; 
 int FUNC0 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 struct netxen_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  netxen_nic_driver_name ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct net_device *dev, struct ethtool_drvinfo *drvinfo)
{
	struct netxen_adapter *adapter = FUNC1(dev);
	u32 fw_major = 0;
	u32 fw_minor = 0;
	u32 fw_build = 0;

	FUNC5(drvinfo->driver, netxen_nic_driver_name,
		sizeof(drvinfo->driver));
	FUNC5(drvinfo->version, NETXEN_NIC_LINUX_VERSIONID,
		sizeof(drvinfo->version));
	fw_major = FUNC0(adapter, NETXEN_FW_VERSION_MAJOR);
	fw_minor = FUNC0(adapter, NETXEN_FW_VERSION_MINOR);
	fw_build = FUNC0(adapter, NETXEN_FW_VERSION_SUB);
	FUNC4(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		"%d.%d.%d", fw_major, fw_minor, fw_build);

	FUNC5(drvinfo->bus_info, FUNC3(adapter->pdev),
		sizeof(drvinfo->bus_info));
	drvinfo->regdump_len = NETXEN_NIC_REGS_LEN;
	drvinfo->eedump_len = FUNC2(dev);
}