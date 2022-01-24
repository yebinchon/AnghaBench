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
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {scalar_t__ tp_vers; scalar_t__ fw_vers; } ;
struct adapter {TYPE_1__ params; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_VERSION ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 struct adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct adapter *adapter = FUNC4(dev);

	FUNC7(info->driver, KBUILD_MODNAME, sizeof(info->driver));
	FUNC7(info->version, DRV_VERSION, sizeof(info->version));
	FUNC7(info->bus_info, FUNC5(adapter->pdev),
		sizeof(info->bus_info));

	if (adapter->params.fw_vers)
		FUNC6(info->fw_version, sizeof(info->fw_version),
			"%u.%u.%u.%u, TP %u.%u.%u.%u",
			FUNC1(adapter->params.fw_vers),
			FUNC3(adapter->params.fw_vers),
			FUNC2(adapter->params.fw_vers),
			FUNC0(adapter->params.fw_vers),
			FUNC1(adapter->params.tp_vers),
			FUNC3(adapter->params.tp_vers),
			FUNC2(adapter->params.tp_vers),
			FUNC0(adapter->params.tp_vers));
}