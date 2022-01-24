#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_14__ {int /*<<< orphan*/  (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int get_link_status; int type; TYPE_7__ ops; int /*<<< orphan*/  autoneg; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  type; TYPE_1__ ops; } ;
struct TYPE_11__ {scalar_t__ eee_lp_ability; } ;
struct TYPE_12__ {TYPE_4__ ich8lan; } ;
struct e1000_hw {TYPE_6__ phy; struct e1000_mac_info mac; TYPE_5__ dev_spec; TYPE_3__* adapter; } ;
typedef  scalar_t__ s32 ;
struct TYPE_10__ {TYPE_2__* pdev; } ;
struct TYPE_9__ {scalar_t__ device; } ;

/* Variables and functions */
 scalar_t__ E1000_DEV_ID_PCH_I218_LM3 ; 
 scalar_t__ E1000_DEV_ID_PCH_I218_V3 ; 
 scalar_t__ E1000_DEV_ID_PCH_LPTLP_I218_LM ; 
 scalar_t__ E1000_DEV_ID_PCH_LPTLP_I218_V ; 
 scalar_t__ E1000_ERR_CONFIG ; 
 int E1000_STATUS_FD ; 
 int E1000_STATUS_SPEED_MASK ; 
 int E1000_TIPG_IPGT_MASK ; 
 int /*<<< orphan*/  HV_KMRN_FIFO_CTRLSTA ; 
 int HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK ; 
 int HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT ; 
 int /*<<< orphan*/  I82579_RX_CONFIG ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  TIPG ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
#define  e1000_pch2lan 129 
 int e1000_pch_lpt ; 
#define  e1000_pchlan 128 
 int /*<<< orphan*/  e1000_phy_82578 ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*) ; 
 scalar_t__ FUNC9 (struct e1000_hw*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC18(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	s32 ret_val;
	bool link;
	u16 phy_reg;

	/* We only want to go out to the PHY registers to see if Auto-Neg
	 * has completed and/or if our link status has changed.  The
	 * get_link_status flag is set upon receiving a Link Status
	 * Change or Rx Sequence Error interrupt.
	 */
	if (!mac->get_link_status)
		return 0;

	/* First we want to see if the MII Status Register reports
	 * link.  If so, then we want to get the current speed/duplex
	 * of the PHY.
	 */
	ret_val = FUNC9(hw, 1, 0, &link);
	if (ret_val)
		return ret_val;

	if (hw->mac.type == e1000_pchlan) {
		ret_val = FUNC0(hw, link);
		if (ret_val)
			return ret_val;
	}

	/* When connected at 10Mbps half-duplex, 82579 parts are excessively
	 * aggressive resulting in many collisions. To avoid this, increase
	 * the IPG and reduce Rx latency in the PHY.
	 */
	if ((hw->mac.type == e1000_pch2lan) && link) {
		u32 reg;
		reg = FUNC13(STATUS);
		if (!(reg & (E1000_STATUS_FD | E1000_STATUS_SPEED_MASK))) {
			reg = FUNC13(TIPG);
			reg &= ~E1000_TIPG_IPGT_MASK;
			reg |= 0xFF;
			FUNC14(TIPG, reg);

			/* Reduce Rx latency in analog PHY */
			ret_val = hw->phy.ops.acquire(hw);
			if (ret_val)
				return ret_val;

			ret_val =
			    FUNC6(hw, I82579_RX_CONFIG, 0);

			hw->phy.ops.release(hw);

			if (ret_val)
				return ret_val;
		}
	}

	/* Work-around I218 hang issue */
	if ((hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPTLP_I218_LM) ||
	    (hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPTLP_I218_V) ||
	    (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_LM3) ||
	    (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_V3)) {
		ret_val = FUNC1(hw, link);
		if (ret_val)
			return ret_val;
	}

	if (hw->mac.type == e1000_pch_lpt) {
		/* Set platform power management values for
		 * Latency Tolerance Reporting (LTR)
		 */
		ret_val = FUNC4(hw, link);
		if (ret_val)
			return ret_val;
	}

	/* Clear link partner's EEE ability */
	hw->dev_spec.ich8lan.eee_lp_ability = 0;

	if (!link)
		return 0;	/* No link detected */

	mac->get_link_status = false;

	switch (hw->mac.type) {
	case e1000_pch2lan:
		ret_val = FUNC2(hw);
		if (ret_val)
			return ret_val;
		/* fall-thru */
	case e1000_pchlan:
		if (hw->phy.type == e1000_phy_82578) {
			ret_val = FUNC3(hw);
			if (ret_val)
				return ret_val;
		}

		/* Workaround for PCHx parts in half-duplex:
		 * Set the number of preambles removed from the packet
		 * when it is passed from the PHY to the MAC to prevent
		 * the MAC from misinterpreting the packet type.
		 */
		FUNC10(hw, HV_KMRN_FIFO_CTRLSTA, &phy_reg);
		phy_reg &= ~HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK;

		if ((FUNC13(STATUS) & E1000_STATUS_FD) != E1000_STATUS_FD)
			phy_reg |= (1 << HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT);

		FUNC11(hw, HV_KMRN_FIFO_CTRLSTA, phy_reg);
		break;
	default:
		break;
	}

	/* Check if there was DownShift, must be checked
	 * immediately after link-up
	 */
	FUNC7(hw);

	/* Enable/Disable EEE after link up */
	ret_val = FUNC5(hw);
	if (ret_val)
		return ret_val;

	/* If we are forcing speed/duplex, then we simply return since
	 * we have already determined whether we have link or not.
	 */
	if (!mac->autoneg)
		return -E1000_ERR_CONFIG;

	/* Auto-Neg is enabled.  Auto Speed Detection takes care
	 * of MAC speed/duplex configuration.  So we only need to
	 * configure Collision Distance in the MAC.
	 */
	mac->ops.config_collision_dist(hw);

	/* Configure Flow Control now that Auto-Neg has completed.
	 * First, we need to restore the desired flow control
	 * settings because we may have had to re-autoneg with a
	 * different link partner.
	 */
	ret_val = FUNC8(hw);
	if (ret_val)
		FUNC12("Error configuring flow control\n");

	return ret_val;
}