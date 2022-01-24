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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int type; int /*<<< orphan*/  mdix; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_INBAND_PARAM ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_TIMEOUTS ; 
 int /*<<< orphan*/  IFE_PHY_MDIX_CONTROL ; 
 int IFE_PMC_AUTO_MDIX ; 
 int IFE_PMC_FORCE_MDIX ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
#define  e1000_phy_82577 133 
#define  e1000_phy_82578 132 
#define  e1000_phy_82579 131 
#define  e1000_phy_bm 130 
#define  e1000_phy_ife 129 
#define  e1000_phy_igp_3 128 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC10(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;
	u16 reg_data;

	ctrl = FUNC8(CTRL);
	ctrl |= E1000_CTRL_SLU;
	ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
	FUNC9(CTRL, ctrl);

	/* Set the mac to wait the maximum time between each iteration
	 * and increase the max iterations when polling the phy;
	 * this fixes erroneous timeouts at 10Mbps.
	 */
	ret_val = FUNC5(hw, E1000_KMRNCTRLSTA_TIMEOUTS, 0xFFFF);
	if (ret_val)
		return ret_val;
	ret_val = FUNC3(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
				       &reg_data);
	if (ret_val)
		return ret_val;
	reg_data |= 0x3F;
	ret_val = FUNC5(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
					reg_data);
	if (ret_val)
		return ret_val;

	switch (hw->phy.type) {
	case e1000_phy_igp_3:
		ret_val = FUNC1(hw);
		if (ret_val)
			return ret_val;
		break;
	case e1000_phy_bm:
	case e1000_phy_82578:
		ret_val = FUNC2(hw);
		if (ret_val)
			return ret_val;
		break;
	case e1000_phy_82577:
	case e1000_phy_82579:
		ret_val = FUNC0(hw);
		if (ret_val)
			return ret_val;
		break;
	case e1000_phy_ife:
		ret_val = FUNC6(hw, IFE_PHY_MDIX_CONTROL, &reg_data);
		if (ret_val)
			return ret_val;

		reg_data &= ~IFE_PMC_AUTO_MDIX;

		switch (hw->phy.mdix) {
		case 1:
			reg_data &= ~IFE_PMC_FORCE_MDIX;
			break;
		case 2:
			reg_data |= IFE_PMC_FORCE_MDIX;
			break;
		case 0:
		default:
			reg_data |= IFE_PMC_AUTO_MDIX;
			break;
		}
		ret_val = FUNC7(hw, IFE_PHY_MDIX_CONTROL, reg_data);
		if (ret_val)
			return ret_val;
		break;
	default:
		break;
	}

	return FUNC4(hw);
}