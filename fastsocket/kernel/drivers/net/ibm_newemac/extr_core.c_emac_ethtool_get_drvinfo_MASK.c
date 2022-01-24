#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ethtool_drvinfo {char* fw_version; int /*<<< orphan*/  regdump_len; int /*<<< orphan*/  n_stats; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct emac_instance {int cell_index; TYPE_2__* ofdev; } ;
struct TYPE_4__ {TYPE_1__* node; } ;
struct TYPE_3__ {char* full_name; } ;

/* Variables and functions */
 char* DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct emac_instance* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev,
				     struct ethtool_drvinfo *info)
{
	struct emac_instance *dev = FUNC2(ndev);

	FUNC4(info->driver, "ibm_emac");
	FUNC4(info->version, DRV_VERSION);
	info->fw_version[0] = '\0';
	FUNC3(info->bus_info, "PPC 4xx EMAC-%d %s",
		dev->cell_index, dev->ofdev->node->full_name);
	info->n_stats = FUNC1(ndev);
	info->regdump_len = FUNC0(ndev);
}