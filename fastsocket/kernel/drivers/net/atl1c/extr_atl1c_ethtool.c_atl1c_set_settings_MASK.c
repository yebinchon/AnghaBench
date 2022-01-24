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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ duplex; } ;
struct atl1c_hw {scalar_t__ autoneg_advertised; } ;
struct atl1c_adapter {int /*<<< orphan*/  flags; TYPE_1__* pdev; struct atl1c_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ADVERTISED_1000baseT_Full ; 
 scalar_t__ ADVERTISED_100baseT_Full ; 
 scalar_t__ ADVERTISED_100baseT_Half ; 
 scalar_t__ ADVERTISED_10baseT_Full ; 
 scalar_t__ ADVERTISED_10baseT_Half ; 
 scalar_t__ ADVERTISED_Autoneg ; 
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 int EINVAL ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 scalar_t__ FUNC0 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct atl1c_adapter* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev,
			      struct ethtool_cmd *ecmd)
{
	struct atl1c_adapter *adapter = FUNC5(netdev);
	struct atl1c_hw *hw = &adapter->hw;
	u16  autoneg_advertised;

	while (FUNC7(__AT_RESETTING, &adapter->flags))
		FUNC4(1);

	if (ecmd->autoneg == AUTONEG_ENABLE) {
		autoneg_advertised = ADVERTISED_Autoneg;
	} else {
		u32 speed = FUNC3(ecmd);
		if (speed == SPEED_1000) {
			if (ecmd->duplex != DUPLEX_FULL) {
				if (FUNC6(adapter))
					FUNC2(&adapter->pdev->dev,
						"1000M half is invalid\n");
				FUNC1(__AT_RESETTING, &adapter->flags);
				return -EINVAL;
			}
			autoneg_advertised = ADVERTISED_1000baseT_Full;
		} else if (speed == SPEED_100) {
			if (ecmd->duplex == DUPLEX_FULL)
				autoneg_advertised = ADVERTISED_100baseT_Full;
			else
				autoneg_advertised = ADVERTISED_100baseT_Half;
		} else {
			if (ecmd->duplex == DUPLEX_FULL)
				autoneg_advertised = ADVERTISED_10baseT_Full;
			else
				autoneg_advertised = ADVERTISED_10baseT_Half;
		}
	}

	if (hw->autoneg_advertised != autoneg_advertised) {
		hw->autoneg_advertised = autoneg_advertised;
		if (FUNC0(hw) != 0) {
			if (FUNC6(adapter))
				FUNC2(&adapter->pdev->dev,
					"ethtool speed/duplex setting failed\n");
			FUNC1(__AT_RESETTING, &adapter->flags);
			return -EINVAL;
		}
	}
	FUNC1(__AT_RESETTING, &adapter->flags);
	return 0;
}