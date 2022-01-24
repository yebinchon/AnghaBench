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
struct ql3_adapter {int /*<<< orphan*/  PHYAddr; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; void* advertising; int /*<<< orphan*/  phy_address; int /*<<< orphan*/  port; void* supported; int /*<<< orphan*/  transceiver; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_FIBRE ; 
 int /*<<< orphan*/  PORT_TP ; 
 int /*<<< orphan*/  QL_LINK_OPTICAL ; 
 int /*<<< orphan*/  XCVR_INTERNAL ; 
 struct ql3_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql3_adapter*) ; 
 void* FUNC4 (struct ql3_adapter*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev, struct ethtool_cmd *ecmd)
{
	struct ql3_adapter *qdev = FUNC0(ndev);

	ecmd->transceiver = XCVR_INTERNAL;
	ecmd->supported = FUNC4(qdev);

	if (FUNC5(QL_LINK_OPTICAL,&qdev->flags)) {
		ecmd->port = PORT_FIBRE;
	} else {
		ecmd->port = PORT_TP;
		ecmd->phy_address = qdev->PHYAddr;
	}
	ecmd->advertising = FUNC4(qdev);
	ecmd->autoneg = FUNC1(qdev);
	ecmd->speed = FUNC3(qdev);
	ecmd->duplex = FUNC2(qdev);
	return 0;
}