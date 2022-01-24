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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  autoneg; int /*<<< orphan*/  link_duplex; scalar_t__ link_speed; } ;
struct TYPE_3__ {int /*<<< orphan*/  autoneg_advertised; } ;
struct pch_gbe_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mii; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int /*<<< orphan*/  autoneg; int /*<<< orphan*/  advertising; int /*<<< orphan*/  duplex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_RESET ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ FUNC0 (struct ethtool_cmd*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 struct pch_gbe_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_gbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pch_gbe_adapter*) ; 
 int FUNC8 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
				 struct ethtool_cmd *ecmd)
{
	struct pch_gbe_adapter *adapter = FUNC2(netdev);
	struct pch_gbe_hw *hw = &adapter->hw;
	u32 speed = FUNC0(ecmd);
	int ret;

	FUNC6(hw, MII_BMCR, BMCR_RESET);

	/* when set_settings() is called with a ethtool_cmd previously
	 * filled by get_settings() on a down link, speed is -1: */
	if (speed == UINT_MAX) {
		speed = SPEED_1000;
		ecmd->duplex = DUPLEX_FULL;
	}
	ret = FUNC1(&adapter->mii, ecmd);
	if (ret) {
		FUNC9("Error: mii_ethtool_sset\n");
		return ret;
	}
	hw->mac.link_speed = speed;
	hw->mac.link_duplex = ecmd->duplex;
	hw->phy.autoneg_advertised = ecmd->advertising;
	hw->mac.autoneg = ecmd->autoneg;
	FUNC5(hw);

	/* reset the link */
	if (FUNC3(adapter->netdev)) {
		FUNC4(adapter);
		ret = FUNC8(adapter);
	} else {
		FUNC7(adapter);
	}
	return ret;
}