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
struct ql3_adapter {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ eedump_len; scalar_t__ regdump_len; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct ql3_adapter* FUNC0 (struct net_device*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* ql3xxx_driver_name ; 
 char* ql3xxx_driver_version ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
			   struct ethtool_drvinfo *drvinfo)
{
	struct ql3_adapter *qdev = FUNC0(ndev);
	FUNC2(drvinfo->driver, ql3xxx_driver_name, 32);
	FUNC2(drvinfo->version, ql3xxx_driver_version, 32);
	FUNC2(drvinfo->fw_version, "N/A", 32);
	FUNC2(drvinfo->bus_info, FUNC1(qdev->pdev), 32);
	drvinfo->regdump_len = 0;
	drvinfo->eedump_len = 0;
}