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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {scalar_t__ (* set_d0_lplu_state ) (struct e1000_hw*,int) ;} ;
struct e1000_phy_info {int mdix; scalar_t__ autoneg_advertised; TYPE_1__ ops; } ;
struct TYPE_4__ {scalar_t__ autoneg; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ ADVERTISE_1000_FULL ; 
 int /*<<< orphan*/  CTL1000_ENABLE_MASTER ; 
 int /*<<< orphan*/  IGP01E1000_PHY_PORT_CONFIG ; 
 int /*<<< orphan*/  IGP01E1000_PHY_PORT_CTRL ; 
 int /*<<< orphan*/  IGP01E1000_PSCFR_SMART_SPEED ; 
 int /*<<< orphan*/  IGP01E1000_PSCR_AUTO_MDIX ; 
 int /*<<< orphan*/  IGP01E1000_PSCR_FORCE_MDI_MDIX ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int) ; 

s32 FUNC7(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
	s32 ret_val;
	u16 data;

	ret_val = FUNC0(hw);
	if (ret_val) {
		FUNC4("Error resetting the PHY.\n");
		return ret_val;
	}

	/* Wait 100ms for MAC to configure PHY from NVM settings, to avoid
	 * timeout issues when LFS is enabled.
	 */
	FUNC5(100);

	/* disable lplu d0 during driver init */
	if (hw->phy.ops.set_d0_lplu_state) {
		ret_val = hw->phy.ops.set_d0_lplu_state(hw, false);
		if (ret_val) {
			FUNC4("Error Disabling LPLU D0\n");
			return ret_val;
		}
	}
	/* Configure mdi-mdix settings */
	ret_val = FUNC2(hw, IGP01E1000_PHY_PORT_CTRL, &data);
	if (ret_val)
		return ret_val;

	data &= ~IGP01E1000_PSCR_AUTO_MDIX;

	switch (phy->mdix) {
	case 1:
		data &= ~IGP01E1000_PSCR_FORCE_MDI_MDIX;
		break;
	case 2:
		data |= IGP01E1000_PSCR_FORCE_MDI_MDIX;
		break;
	case 0:
	default:
		data |= IGP01E1000_PSCR_AUTO_MDIX;
		break;
	}
	ret_val = FUNC3(hw, IGP01E1000_PHY_PORT_CTRL, data);
	if (ret_val)
		return ret_val;

	/* set auto-master slave resolution settings */
	if (hw->mac.autoneg) {
		/* when autonegotiation advertisement is only 1000Mbps then we
		 * should disable SmartSpeed and enable Auto MasterSlave
		 * resolution as hardware default.
		 */
		if (phy->autoneg_advertised == ADVERTISE_1000_FULL) {
			/* Disable SmartSpeed */
			ret_val = FUNC2(hw, IGP01E1000_PHY_PORT_CONFIG,
					   &data);
			if (ret_val)
				return ret_val;

			data &= ~IGP01E1000_PSCFR_SMART_SPEED;
			ret_val = FUNC3(hw, IGP01E1000_PHY_PORT_CONFIG,
					   data);
			if (ret_val)
				return ret_val;

			/* Set auto Master/Slave resolution process */
			ret_val = FUNC2(hw, MII_CTRL1000, &data);
			if (ret_val)
				return ret_val;

			data &= ~CTL1000_ENABLE_MASTER;
			ret_val = FUNC3(hw, MII_CTRL1000, data);
			if (ret_val)
				return ret_val;
		}

		ret_val = FUNC1(hw);
	}

	return ret_val;
}