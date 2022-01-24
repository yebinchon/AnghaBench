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
struct skge_port {TYPE_1__* hw; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 char* DRV_NAME ; 
 char* DRV_VERSION ; 
 struct skge_port* FUNC0 (struct net_device*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
			     struct ethtool_drvinfo *info)
{
	struct skge_port *skge = FUNC0(dev);

	FUNC2(info->driver, DRV_NAME);
	FUNC2(info->version, DRV_VERSION);
	FUNC2(info->fw_version, "N/A");
	FUNC2(info->bus_info, FUNC1(skge->hw->pdev));
}