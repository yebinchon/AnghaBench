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
struct vnic_devcmd_fw_info {int /*<<< orphan*/  fw_version; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct enic {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,struct vnic_devcmd_fw_info**) ; 
 struct enic* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
	struct ethtool_drvinfo *drvinfo)
{
	struct enic *enic = FUNC1(netdev);
	struct vnic_devcmd_fw_info *fw_info;

	FUNC0(enic, &fw_info);

	FUNC3(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
	FUNC3(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
	FUNC3(drvinfo->fw_version, fw_info->fw_version,
		sizeof(drvinfo->fw_version));
	FUNC3(drvinfo->bus_info, FUNC2(enic->pdev),
		sizeof(drvinfo->bus_info));
}