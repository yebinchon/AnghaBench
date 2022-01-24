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
struct ethtool_drvinfo {int /*<<< orphan*/  regdump_len; int /*<<< orphan*/  eedump_len; int /*<<< orphan*/  testinfo_len; int /*<<< orphan*/  n_stats; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  flash_size; } ;
struct bnx2x {TYPE_1__ common; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_NUM_STATS ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int /*<<< orphan*/  DRV_MODULE_VERSION ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct bnx2x* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
			      struct ethtool_drvinfo *info)
{
	struct bnx2x *bp = FUNC3(dev);

	FUNC5(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
	FUNC5(info->version, DRV_MODULE_VERSION, sizeof(info->version));

	FUNC1(bp, info->fw_version, sizeof(info->fw_version));

	FUNC5(info->bus_info, FUNC4(bp->pdev), sizeof(info->bus_info));
	info->n_stats = BNX2X_NUM_STATS;
	info->testinfo_len = FUNC0(bp);
	info->eedump_len = bp->common.flash_size;
	info->regdump_len = FUNC2(dev);
}