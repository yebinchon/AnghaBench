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
struct ql_reg_dump {int dummy; } ;
struct ql_mpi_coredump {int dummy; } ;
struct ql_adapter {int fw_rev_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int regdump_len; scalar_t__ eedump_len; scalar_t__ testinfo_len; scalar_t__ n_stats; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_FRC_COREDUMP ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlge_driver_name ; 
 int /*<<< orphan*/  qlge_driver_version ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev,
			   struct ethtool_drvinfo *drvinfo)
{
	struct ql_adapter *qdev = FUNC0(ndev);
	FUNC3(drvinfo->driver, qlge_driver_name, 32);
	FUNC3(drvinfo->version, qlge_driver_version, 32);
	FUNC2(drvinfo->fw_version, 32, "v%d.%d.%d",
		 (qdev->fw_rev_id & 0x00ff0000) >> 16,
		 (qdev->fw_rev_id & 0x0000ff00) >> 8,
		 (qdev->fw_rev_id & 0x000000ff));
	FUNC3(drvinfo->bus_info, FUNC1(qdev->pdev), 32);
	drvinfo->n_stats = 0;
	drvinfo->testinfo_len = 0;
	if (!FUNC4(QL_FRC_COREDUMP, &qdev->flags))
		drvinfo->regdump_len = sizeof(struct ql_mpi_coredump);
	else
		drvinfo->regdump_len = sizeof(struct ql_reg_dump);
	drvinfo->eedump_len = 0;
}