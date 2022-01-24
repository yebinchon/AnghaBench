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
struct net_device {int dummy; } ;
struct ixgb_adapter {int /*<<< orphan*/  netdev; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 int EINVAL ; 
 scalar_t__ SPEED_10000 ; 
 int /*<<< orphan*/  FUNC0 (struct ixgb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_adapter*) ; 
 struct ixgb_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, struct ethtool_cmd *ecmd)
{
	struct ixgb_adapter *adapter = FUNC4(netdev);

	if (ecmd->autoneg == AUTONEG_ENABLE ||
	   ecmd->speed + ecmd->duplex != SPEED_10000 + DUPLEX_FULL)
		return -EINVAL;

	if (FUNC5(adapter->netdev)) {
		FUNC0(adapter, true);
		FUNC1(adapter);
		FUNC3(adapter);
		FUNC2(netdev);
	} else
		FUNC1(adapter);

	return 0;
}