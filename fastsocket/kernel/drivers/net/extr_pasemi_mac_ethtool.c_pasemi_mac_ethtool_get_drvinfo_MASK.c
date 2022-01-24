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
struct pasemi_mac {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ethtool_drvinfo*,int /*<<< orphan*/ ,int) ; 
 struct pasemi_mac* FUNC1 (struct net_device*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct net_device *netdev,
			       struct ethtool_drvinfo *drvinfo)
{
	struct pasemi_mac *mac;
	mac = FUNC1(netdev);

	/* clear and fill out info */
	FUNC0(drvinfo, 0, sizeof(struct ethtool_drvinfo));
	FUNC4(drvinfo->driver, "pasemi_mac", 12);
	FUNC3(drvinfo->version, "N/A");
	FUNC3(drvinfo->fw_version, "N/A");
	FUNC4(drvinfo->bus_info, FUNC2(mac->pdev), 32);
}