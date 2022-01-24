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
struct spider_net_card {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_drvinfo*,int /*<<< orphan*/ ,int) ; 
 struct spider_net_card* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spider_net_driver_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct net_device *netdev,
			       struct ethtool_drvinfo *drvinfo)
{
	struct spider_net_card *card;
	card = FUNC1(netdev);

	/* clear and fill out info */
	FUNC0(drvinfo, 0, sizeof(struct ethtool_drvinfo));
	FUNC4(drvinfo->driver, spider_net_driver_name, 32);
	FUNC4(drvinfo->version, VERSION, 32);
	FUNC3(drvinfo->fw_version, "no information");
	FUNC4(drvinfo->bus_info, FUNC2(card->pdev), 32);
}