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
struct ixgb_hw {int /*<<< orphan*/ * curr_mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IXGB_RAR_ENTRIES ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA ; 
 int /*<<< orphan*/  FUNC4 (struct ixgb_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgb_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ixgb_hw *hw)
{
	u32 i;

	FUNC0("ixgb_init_rx_addrs");

	/*
	 * If the current mac address is valid, assume it is a software override
	 * to the permanent address.
	 * Otherwise, use the permanent address from the eeprom.
	 */
	if (!FUNC6(hw->curr_mac_addr)) {

		/* Get the MAC address from the eeprom for later reference */
		FUNC4(hw, hw->curr_mac_addr);

		FUNC2(" Keeping Permanent MAC Addr =%.2X %.2X %.2X ",
			  hw->curr_mac_addr[0],
			  hw->curr_mac_addr[1], hw->curr_mac_addr[2]);
		FUNC2("%.2X %.2X %.2X\n",
			  hw->curr_mac_addr[3],
			  hw->curr_mac_addr[4], hw->curr_mac_addr[5]);
	} else {

		/* Setup the receive address. */
		FUNC1("Overriding MAC Address in RAR[0]\n");
		FUNC2(" New MAC Addr =%.2X %.2X %.2X ",
			  hw->curr_mac_addr[0],
			  hw->curr_mac_addr[1], hw->curr_mac_addr[2]);
		FUNC2("%.2X %.2X %.2X\n",
			  hw->curr_mac_addr[3],
			  hw->curr_mac_addr[4], hw->curr_mac_addr[5]);

		FUNC5(hw, hw->curr_mac_addr, 0);
	}

	/* Zero out the other 15 receive addresses. */
	FUNC1("Clearing RAR[1-15]\n");
	for (i = 1; i < IXGB_RAR_ENTRIES; i++) {
		/* Write high reg first to disable the AV bit first */
		FUNC3(hw, RA, ((i << 1) + 1), 0);
		FUNC3(hw, RA, (i << 1), 0);
	}

	return;
}