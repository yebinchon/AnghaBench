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
struct rionet_private {TYPE_1__* mport; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 char* DRV_NAME ; 
 char* DRV_VERSION ; 
 struct rionet_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev,
			       struct ethtool_drvinfo *info)
{
	struct rionet_private *rnet = FUNC0(ndev);

	FUNC1(info->driver, DRV_NAME);
	FUNC1(info->version, DRV_VERSION);
	FUNC1(info->fw_version, "n/a");
	FUNC1(info->bus_info, rnet->mport->name);
}