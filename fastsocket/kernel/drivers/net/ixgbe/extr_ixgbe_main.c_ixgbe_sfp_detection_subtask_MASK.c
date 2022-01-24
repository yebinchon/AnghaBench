#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ (* identify_sfp ) (struct ixgbe_hw*) ;scalar_t__ (* reset ) (struct ixgbe_hw*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  sfp_type; TYPE_1__ ops; } ;
struct TYPE_7__ {scalar_t__ (* setup_sfp ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_3__ mac; } ;
struct ixgbe_adapter {int flags2; TYPE_5__* netdev; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; struct ixgbe_hw hw; } ;
typedef  scalar_t__ s32 ;
struct TYPE_10__ {scalar_t__ reg_state; } ;

/* Variables and functions */
 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ; 
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ; 
 int IXGBE_FLAG2_SEARCH_FOR_SFP ; 
 int IXGBE_FLAG2_SFP_NEEDS_RESET ; 
 int /*<<< orphan*/  IXGBE_FLAG_NEED_LINK_CONFIG ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  __IXGBE_IN_SFP_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  probe ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC8(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	s32 err;

	/* not searching for SFP so there is nothing to do here */
	if (!(adapter->flags2 & IXGBE_FLAG2_SEARCH_FOR_SFP) &&
	    !(adapter->flags2 & IXGBE_FLAG2_SFP_NEEDS_RESET))
		return;

	/* someone else is in init, wait until next service event */
	if (FUNC6(__IXGBE_IN_SFP_INIT, &adapter->state))
		return;

	err = hw->phy.ops.identify_sfp(hw);
	if (err == IXGBE_ERR_SFP_NOT_SUPPORTED)
		goto sfp_out;

	if (err == IXGBE_ERR_SFP_NOT_PRESENT) {
		/* If no cable is present, then we need to reset
		 * the next time we find a good cable. */
		adapter->flags2 |= IXGBE_FLAG2_SFP_NEEDS_RESET;
	}

	/* exit on error */
	if (err)
		goto sfp_out;

	/* exit if reset not needed */
	if (!(adapter->flags2 & IXGBE_FLAG2_SFP_NEEDS_RESET))
		goto sfp_out;

	adapter->flags2 &= ~IXGBE_FLAG2_SFP_NEEDS_RESET;

	/*
	 * A module may be identified correctly, but the EEPROM may not have
	 * support for that module.  setup_sfp() will fail in that case, so
	 * we should not allow that module to load.
	 */
	if (hw->mac.type == ixgbe_mac_82598EB)
		err = hw->phy.ops.reset(hw);
	else
		err = hw->mac.ops.setup_sfp(hw);

	if (err == IXGBE_ERR_SFP_NOT_SUPPORTED)
		goto sfp_out;

	adapter->flags |= IXGBE_FLAG_NEED_LINK_CONFIG;
	FUNC2(probe, "detected SFP+: %d\n", hw->phy.sfp_type);

sfp_out:
	FUNC0(__IXGBE_IN_SFP_INIT, &adapter->state);

	if ((err == IXGBE_ERR_SFP_NOT_SUPPORTED) &&
	    (adapter->netdev->reg_state == NETREG_REGISTERED)) {
		FUNC1("failed to initialize because an unsupported "
			  "SFP+ module type was detected.\n");
		FUNC1("Reload the driver after installing a "
			  "supported module.\n");
		FUNC7(adapter->netdev);
	}
}