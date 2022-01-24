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
struct rtl_fw {int /*<<< orphan*/  version; } ;
struct rtl8169_private {int /*<<< orphan*/  pci_dev; struct rtl_fw* rtl_fw; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_fw*) ; 
 int /*<<< orphan*/  MODULENAME ; 
 int /*<<< orphan*/  RTL8169_VERSION ; 
 struct rtl8169_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
				struct ethtool_drvinfo *info)
{
	struct rtl8169_private *tp = FUNC2(dev);
	struct rtl_fw *rtl_fw = tp->rtl_fw;

	FUNC4(info->driver, MODULENAME, sizeof(info->driver));
	FUNC4(info->version, RTL8169_VERSION, sizeof(info->version));
	FUNC4(info->bus_info, FUNC3(tp->pci_dev), sizeof(info->bus_info));
	FUNC0(sizeof(info->fw_version) < sizeof(rtl_fw->version));
	if (!FUNC1(rtl_fw))
		FUNC4(info->fw_version, rtl_fw->version,
			sizeof(info->fw_version));
}