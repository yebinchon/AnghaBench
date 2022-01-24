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
typedef  int /*<<< orphan*/  u16 ;
struct e1000_phy_info {scalar_t__ autoneg_wait_to_complete; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IFE_PHY_MDIX_CONTROL ; 
 int /*<<< orphan*/  IFE_PMC_AUTO_MDIX ; 
 int /*<<< orphan*/  IFE_PMC_FORCE_MDIX ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  PHY_FORCE_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

s32 FUNC6(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
	s32 ret_val;
	u16 data;
	bool link;

	ret_val = FUNC2(hw, MII_BMCR, &data);
	if (ret_val)
		return ret_val;

	FUNC0(hw, &data);

	ret_val = FUNC3(hw, MII_BMCR, data);
	if (ret_val)
		return ret_val;

	/* Disable MDI-X support for 10/100 */
	ret_val = FUNC2(hw, IFE_PHY_MDIX_CONTROL, &data);
	if (ret_val)
		return ret_val;

	data &= ~IFE_PMC_AUTO_MDIX;
	data &= ~IFE_PMC_FORCE_MDIX;

	ret_val = FUNC3(hw, IFE_PHY_MDIX_CONTROL, data);
	if (ret_val)
		return ret_val;

	FUNC4("IFE PMC: %X\n", data);

	FUNC5(1);

	if (phy->autoneg_wait_to_complete) {
		FUNC4("Waiting for forced speed/duplex link on IFE phy.\n");

		ret_val = FUNC1(hw, PHY_FORCE_LIMIT,
						      100000, &link);
		if (ret_val)
			return ret_val;

		if (!link)
			FUNC4("Link taking longer than expected.\n");

		/* Try once more */
		ret_val = FUNC1(hw, PHY_FORCE_LIMIT,
						      100000, &link);
		if (ret_val)
			return ret_val;
	}

	return 0;
}