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
typedef  int u32 ;
typedef  int u16 ;
struct e1000_hw {int mac_type; int autoneg; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_RCTL_LBM_MAC ; 
 int E1000_RCTL_LBM_TCVR ; 
 int MII_CR_LOOPBACK ; 
 int /*<<< orphan*/  PHY_CTRL ; 
 int /*<<< orphan*/  RCTL ; 
#define  e1000_82545 131 
#define  e1000_82545_rev_3 130 
#define  e1000_82546 129 
#define  e1000_82546_rev_3 128 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 rctl;
	u16 phy_reg;

	rctl = FUNC3(RCTL);
	rctl &= ~(E1000_RCTL_LBM_TCVR | E1000_RCTL_LBM_MAC);
	FUNC4(RCTL, rctl);

	switch (hw->mac_type) {
	case e1000_82545:
	case e1000_82546:
	case e1000_82545_rev_3:
	case e1000_82546_rev_3:
	default:
		hw->autoneg = true;
		FUNC1(hw, PHY_CTRL, &phy_reg);
		if (phy_reg & MII_CR_LOOPBACK) {
			phy_reg &= ~MII_CR_LOOPBACK;
			FUNC2(hw, PHY_CTRL, phy_reg);
			FUNC0(hw);
		}
		break;
	}
}