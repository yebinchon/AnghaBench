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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int E1000_ICH_FWSM_FW_VALID ; 
 int /*<<< orphan*/  FWSM ; 
 int /*<<< orphan*/  I217_CGFREG ; 
 int /*<<< orphan*/  I217_CGFREG_ENABLE_MTA_RESET ; 
 int /*<<< orphan*/  I217_MEMPWR ; 
 int /*<<< orphan*/  I217_MEMPWR_DISABLE_SMB_RELEASE ; 
 int /*<<< orphan*/  I217_PROXY_CTRL ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ e1000_pch2lan ; 
 scalar_t__ e1000_phy_i217 ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 

void FUNC7(struct e1000_hw *hw)
{
	s32 ret_val;

	if (hw->mac.type < e1000_pch2lan)
		return;

	ret_val = FUNC0(hw);
	if (ret_val) {
		FUNC3("Failed to init PHY flow ret_val=%d\n", ret_val);
		return;
	}

	/* For i217 Intel Rapid Start Technology support when the system
	 * is transitioning from Sx and no manageability engine is present
	 * configure SMBus to restore on reset, disable proxy, and enable
	 * the reset on MTA (Multicast table array).
	 */
	if (hw->phy.type == e1000_phy_i217) {
		u16 phy_reg;

		ret_val = hw->phy.ops.acquire(hw);
		if (ret_val) {
			FUNC3("Failed to setup iRST\n");
			return;
		}

		if (!(FUNC4(FWSM) & E1000_ICH_FWSM_FW_VALID)) {
			/* Restore clear on SMB if no manageability engine
			 * is present
			 */
			ret_val = FUNC1(hw, I217_MEMPWR, &phy_reg);
			if (ret_val)
				goto release;
			phy_reg |= I217_MEMPWR_DISABLE_SMB_RELEASE;
			FUNC2(hw, I217_MEMPWR, phy_reg);

			/* Disable Proxy */
			FUNC2(hw, I217_PROXY_CTRL, 0);
		}
		/* Enable reset on MTA */
		ret_val = FUNC1(hw, I217_CGFREG, &phy_reg);
		if (ret_val)
			goto release;
		phy_reg &= ~I217_CGFREG_ENABLE_MTA_RESET;
		FUNC2(hw, I217_CGFREG, phy_reg);
release:
		if (ret_val)
			FUNC3("Error %d in resume workarounds\n", ret_val);
		hw->phy.ops.release(hw);
	}
}