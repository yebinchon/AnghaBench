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
typedef  scalar_t__ u32 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct adapter {int /*<<< orphan*/  pdev; int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 struct port_info* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,scalar_t__*) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct port_info *pi = FUNC7(dev);
	struct adapter *adapter = pi->adapter;
	u32 fw_vers = 0;
	u32 tp_vers = 0;

	FUNC10(&adapter->stats_lock);
	FUNC13(adapter, &fw_vers);
	FUNC14(adapter, &tp_vers);
	FUNC11(&adapter->stats_lock);

	FUNC12(info->driver, DRV_NAME, sizeof(info->driver));
	FUNC12(info->version, DRV_VERSION, sizeof(info->version));
	FUNC12(info->bus_info, FUNC8(adapter->pdev),
		sizeof(info->bus_info));
	if (fw_vers)
		FUNC9(info->fw_version, sizeof(info->fw_version),
			 "%s %u.%u.%u TP %u.%u.%u",
			 FUNC3(fw_vers) ? "T" : "N",
			 FUNC0(fw_vers),
			 FUNC2(fw_vers),
			 FUNC1(fw_vers),
			 FUNC4(tp_vers),
			 FUNC6(tp_vers),
			 FUNC5(tp_vers));
}