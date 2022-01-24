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
struct TYPE_5__ {int /*<<< orphan*/  (* init_uta_tables ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* clear_vmdq ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_rar ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_mac_addr ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int num_rar_entries; int mcft_size; TYPE_2__ ops; int /*<<< orphan*/  mc_filter_type; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int rar_used_count; scalar_t__ mta_in_use; scalar_t__ overflow_promisc; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ addr_ctrl; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CLEAR_VMDQ_ALL ; 
 int /*<<< orphan*/  IXGBE_MCSTCTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IXGBE_RAH_AV ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*) ; 

s32 FUNC10(struct ixgbe_hw *hw)
{
	u32 i;
	u32 rar_entries = hw->mac.num_rar_entries;

	/*
	 * If the current mac address is valid, assume it is a software override
	 * to the permanent address.
	 * Otherwise, use the permanent address from the eeprom.
	 */
	if (!FUNC5(hw->mac.addr)) {
		/* Get the MAC address from the RAR0 for later reference */
		hw->mac.ops.get_mac_addr(hw, hw->mac.addr);

		FUNC4(hw, " Keeping Current RAR0 Addr =%pM\n", hw->mac.addr);
	} else {
		/* Setup the receive address. */
		FUNC4(hw, "Overriding MAC Address in RAR[0]\n");
		FUNC4(hw, " New MAC Addr =%pM\n", hw->mac.addr);

		hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, IXGBE_RAH_AV);

		/*  clear VMDq pool/queue selection for RAR 0 */
		hw->mac.ops.clear_vmdq(hw, 0, IXGBE_CLEAR_VMDQ_ALL);
	}
	hw->addr_ctrl.overflow_promisc = 0;

	hw->addr_ctrl.rar_used_count = 1;

	/* Zero out the other receive addresses. */
	FUNC4(hw, "Clearing RAR[1-%d]\n", rar_entries - 1);
	for (i = 1; i < rar_entries; i++) {
		FUNC3(hw, FUNC2(i), 0);
		FUNC3(hw, FUNC1(i), 0);
	}

	/* Clear the MTA */
	hw->addr_ctrl.mta_in_use = 0;
	FUNC3(hw, IXGBE_MCSTCTRL, hw->mac.mc_filter_type);

	FUNC4(hw, " Clearing MTA\n");
	for (i = 0; i < hw->mac.mcft_size; i++)
		FUNC3(hw, FUNC0(i), 0);

	if (hw->mac.ops.init_uta_tables)
		hw->mac.ops.init_uta_tables(hw);

	return 0;
}