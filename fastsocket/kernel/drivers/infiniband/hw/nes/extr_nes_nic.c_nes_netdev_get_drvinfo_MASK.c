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
struct nes_vnic {TYPE_1__* nesdev; } ;
struct nes_adapter {int firmware_version; } ;
struct ethtool_drvinfo {scalar_t__ regdump_len; scalar_t__ eedump_len; scalar_t__ testinfo_len; int /*<<< orphan*/  n_stats; int /*<<< orphan*/  version; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcidev; struct nes_adapter* nesadapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct nes_vnic* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
		struct ethtool_drvinfo *drvinfo)
{
	struct nes_vnic *nesvnic = FUNC1(netdev);
	struct nes_adapter *nesadapter = nesvnic->nesdev->nesadapter;

	FUNC4(drvinfo->driver, DRV_NAME);
	FUNC4(drvinfo->bus_info, FUNC2(nesvnic->nesdev->pcidev));
	FUNC3(drvinfo->fw_version, "%u.%u", nesadapter->firmware_version>>16,
				nesadapter->firmware_version & 0x000000ff);
	FUNC4(drvinfo->version, DRV_VERSION);
	drvinfo->n_stats = FUNC0(netdev);
	drvinfo->testinfo_len = 0;
	drvinfo->eedump_len = 0;
	drvinfo->regdump_len = 0;
}