#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {int (* acquire ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;int /*<<< orphan*/  (* commit ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {int type; scalar_t__ media_type; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ autoneg; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_FD ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_ILOS ; 
 int E1000_CTRL_SLU ; 
 int E1000_CTRL_SPD_100 ; 
 int E1000_CTRL_SPD_1000 ; 
 int E1000_CTRL_SPD_SEL ; 
 int E1000_STATUS_FD ; 
 int FLAG_IS_ICH ; 
 int /*<<< orphan*/  GG82563_PHY_KMRN_MODE_CTRL ; 
 int /*<<< orphan*/  I82577_PHY_LBK_CTRL ; 
 int /*<<< orphan*/  M88E1000_PHY_SPEC_CTRL ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int) ; 
 scalar_t__ e1000_media_type_copper ; 
#define  e1000_phy_82577 133 
#define  e1000_phy_82578 132 
#define  e1000_phy_82579 131 
#define  e1000_phy_bm 130 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
#define  e1000_phy_gg82563 129 
 int e1000_phy_ife ; 
#define  e1000_phy_m88 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*) ; 
 int FUNC11 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl_reg = 0;
	u16 phy_reg = 0;
	s32 ret_val = 0;

	hw->mac.autoneg = 0;

	if (hw->phy.type == e1000_phy_ife) {
		/* force 100, set loopback */
		FUNC5(hw, MII_BMCR, 0x6100);

		/* Now set up the MAC to the same speed/duplex as the PHY. */
		ctrl_reg = FUNC7(CTRL);
		ctrl_reg &= ~E1000_CTRL_SPD_SEL; /* Clear the speed sel bits */
		ctrl_reg |= (E1000_CTRL_FRCSPD | /* Set the Force Speed Bit */
			     E1000_CTRL_FRCDPX | /* Set the Force Duplex Bit */
			     E1000_CTRL_SPD_100 |/* Force Speed to 100 */
			     E1000_CTRL_FD);	 /* Force Duplex to FULL */

		FUNC8(CTRL, ctrl_reg);
		FUNC3();
		FUNC13(500, 1000);

		return 0;
	}

	/* Specific PHY configuration for loopback */
	switch (hw->phy.type) {
	case e1000_phy_m88:
		/* Auto-MDI/MDIX Off */
		FUNC5(hw, M88E1000_PHY_SPEC_CTRL, 0x0808);
		/* reset to update Auto-MDI/MDIX */
		FUNC5(hw, MII_BMCR, 0x9140);
		/* autoneg off */
		FUNC5(hw, MII_BMCR, 0x8140);
		break;
	case e1000_phy_gg82563:
		FUNC5(hw, GG82563_PHY_KMRN_MODE_CTRL, 0x1CC);
		break;
	case e1000_phy_bm:
		/* Set Default MAC Interface speed to 1GB */
		FUNC4(hw, FUNC0(2, 21), &phy_reg);
		phy_reg &= ~0x0007;
		phy_reg |= 0x006;
		FUNC5(hw, FUNC0(2, 21), phy_reg);
		/* Assert SW reset for above settings to take effect */
		hw->phy.ops.commit(hw);
		FUNC13(1000, 2000);
		/* Force Full Duplex */
		FUNC4(hw, FUNC0(769, 16), &phy_reg);
		FUNC5(hw, FUNC0(769, 16), phy_reg | 0x000C);
		/* Set Link Up (in force link) */
		FUNC4(hw, FUNC0(776, 16), &phy_reg);
		FUNC5(hw, FUNC0(776, 16), phy_reg | 0x0040);
		/* Force Link */
		FUNC4(hw, FUNC0(769, 16), &phy_reg);
		FUNC5(hw, FUNC0(769, 16), phy_reg | 0x0040);
		/* Set Early Link Enable */
		FUNC4(hw, FUNC0(769, 20), &phy_reg);
		FUNC5(hw, FUNC0(769, 20), phy_reg | 0x0400);
		break;
	case e1000_phy_82577:
	case e1000_phy_82578:
		/* Workaround: K1 must be disabled for stable 1Gbps operation */
		ret_val = hw->phy.ops.acquire(hw);
		if (ret_val) {
			FUNC6("Cannot setup 1Gbps loopback.\n");
			return ret_val;
		}
		FUNC1(hw, false);
		hw->phy.ops.release(hw);
		break;
	case e1000_phy_82579:
		/* Disable PHY energy detect power down */
		FUNC4(hw, FUNC0(0, 21), &phy_reg);
		FUNC5(hw, FUNC0(0, 21), phy_reg & ~(1 << 3));
		/* Disable full chip energy detect */
		FUNC4(hw, FUNC0(776, 18), &phy_reg);
		FUNC5(hw, FUNC0(776, 18), phy_reg | 1);
		/* Enable loopback on the PHY */
		FUNC5(hw, I82577_PHY_LBK_CTRL, 0x8001);
		break;
	default:
		break;
	}

	/* force 1000, set loopback */
	FUNC5(hw, MII_BMCR, 0x4140);
	FUNC9(250);

	/* Now set up the MAC to the same speed/duplex as the PHY. */
	ctrl_reg = FUNC7(CTRL);
	ctrl_reg &= ~E1000_CTRL_SPD_SEL; /* Clear the speed sel bits */
	ctrl_reg |= (E1000_CTRL_FRCSPD | /* Set the Force Speed Bit */
		     E1000_CTRL_FRCDPX | /* Set the Force Duplex Bit */
		     E1000_CTRL_SPD_1000 |/* Force Speed to 1000 */
		     E1000_CTRL_FD);	 /* Force Duplex to FULL */

	if (adapter->flags & FLAG_IS_ICH)
		ctrl_reg |= E1000_CTRL_SLU;	/* Set Link Up */

	if (hw->phy.media_type == e1000_media_type_copper &&
	    hw->phy.type == e1000_phy_m88) {
		ctrl_reg |= E1000_CTRL_ILOS;	/* Invert Loss of Signal */
	} else {
		/* Set the ILOS bit on the fiber Nic if half duplex link is
		 * detected.
		 */
		if ((FUNC7(STATUS) & E1000_STATUS_FD) == 0)
			ctrl_reg |= (E1000_CTRL_ILOS | E1000_CTRL_SLU);
	}

	FUNC8(CTRL, ctrl_reg);

	/* Disable the receiver on the PHY so when a cable is plugged in, the
	 * PHY does not begin to autoneg when a cable is reconnected to the NIC.
	 */
	if (hw->phy.type == e1000_phy_m88)
		FUNC2(adapter);

	FUNC13(500, 1000);

	return 0;
}