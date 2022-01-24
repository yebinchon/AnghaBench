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
typedef  int u16 ;
struct e1000_hw {scalar_t__ phy_type; scalar_t__ autoneg; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_SUCCESS ; 
 int MII_SR_LINK_STATUS ; 
 int /*<<< orphan*/  PHY_STATUS ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ e1000_phy_igp ; 
 scalar_t__ e1000_phy_m88 ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static s32 FUNC10(struct e1000_hw *hw)
{
	s32 ret_val;
	u16 i;
	u16 phy_data;

	FUNC7("e1000_setup_copper_link");

	/* Check if it is a valid PHY and set PHY mode if necessary. */
	ret_val = FUNC4(hw);
	if (ret_val)
		return ret_val;

	if (hw->phy_type == e1000_phy_igp) {
		ret_val = FUNC1(hw);
		if (ret_val)
			return ret_val;
	} else if (hw->phy_type == e1000_phy_m88) {
		ret_val = FUNC2(hw);
		if (ret_val)
			return ret_val;
	} else {
		ret_val = FUNC8(hw);
		if (ret_val) {
			FUNC7("gbe_dhg_phy_setup failed!\n");
			return ret_val;
		}
	}

	if (hw->autoneg) {
		/* Setup autoneg and flow control advertisement
		 * and perform autonegotiation */
		ret_val = FUNC0(hw);
		if (ret_val)
			return ret_val;
	} else {
		/* PHY will be set to 10H, 10F, 100H,or 100F
		 * depending on value from forced_speed_duplex. */
		FUNC7("Forcing speed and duplex\n");
		ret_val = FUNC5(hw);
		if (ret_val) {
			FUNC7("Error Forcing Speed and Duplex\n");
			return ret_val;
		}
	}

	/* Check link status. Wait up to 100 microseconds for link to become
	 * valid.
	 */
	for (i = 0; i < 10; i++) {
		ret_val = FUNC6(hw, PHY_STATUS, &phy_data);
		if (ret_val)
			return ret_val;
		ret_val = FUNC6(hw, PHY_STATUS, &phy_data);
		if (ret_val)
			return ret_val;

		if (phy_data & MII_SR_LINK_STATUS) {
			/* Config the MAC and PHY after link is up */
			ret_val = FUNC3(hw);
			if (ret_val)
				return ret_val;

			FUNC7("Valid link established!!!\n");
			return E1000_SUCCESS;
		}
		FUNC9(10);
	}

	FUNC7("Unable to establish link!!!\n");
	return E1000_SUCCESS;
}