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
typedef  scalar_t__ u32 ;
struct ixgb_hw {int adapter_stopped; int /*<<< orphan*/  curr_mac_addr; int /*<<< orphan*/  phy_type; int /*<<< orphan*/  device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IXGB_CTRL1_EE_RST ; 
 int /*<<< orphan*/  IXGB_DELAY_AFTER_EE_RESET ; 
 scalar_t__ IXGB_MC_TBL_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgb_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTA ; 
 int /*<<< orphan*/  FUNC5 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgb_hw*) ; 
 scalar_t__ FUNC13 (struct ixgb_hw*) ; 
 int FUNC14 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

bool
FUNC17(struct ixgb_hw *hw)
{
	u32 i;
	u32 ctrl_reg;
	bool status;

	FUNC0("ixgb_init_hw");

	/* Issue a global reset to the MAC.  This will reset the chip's
	 * transmit, receive, DMA, and link units.  It will not effect
	 * the current PCI configuration.  The global reset bit is self-
	 * clearing, and should clear within a microsecond.
	 */
	FUNC1("Issuing a global reset to MAC\n");

	ctrl_reg = FUNC13(hw);

	FUNC1("Issuing an EE reset to MAC\n");
#ifdef HP_ZX1
	/* Workaround for 82597EX reset errata */
	IXGB_WRITE_REG_IO(hw, CTRL1, IXGB_CTRL1_EE_RST);
#else
	FUNC2(hw, CTRL1, IXGB_CTRL1_EE_RST);
#endif

	/* Delay a few ms just to allow the reset to complete */
	FUNC16(IXGB_DELAY_AFTER_EE_RESET);

	if (!FUNC10(hw))
		return false;

	/* Use the device id to determine the type of phy/transceiver. */
	hw->device_id = FUNC9(hw);
	hw->phy_type = FUNC11(hw);

	/* Setup the receive addresses.
	 * Receive Address Registers (RARs 0 - 15).
	 */
	FUNC12(hw);

	/*
	 * Check that a valid MAC address has been set.
	 * If it is not valid, we fail hardware init.
	 */
	if (!FUNC15(hw->curr_mac_addr)) {
		FUNC1("MAC address invalid after ixgb_init_rx_addrs\n");
		return(false);
	}

	/* tell the routines in this file they can access hardware again */
	hw->adapter_stopped = false;

	/* Fill in the bus_info structure */
	FUNC8(hw);

	/* Zero out the Multicast HASH table */
	FUNC1("Zeroing the MTA\n");
	for (i = 0; i < IXGB_MC_TBL_SIZE; i++)
		FUNC3(hw, MTA, i, 0);

	/* Zero out the VLAN Filter Table Array */
	FUNC7(hw);

	/* Zero all of the hardware counters */
	FUNC6(hw);

	/* Call a subroutine to setup flow control. */
	status = FUNC14(hw);

	/* 82597EX errata: Call check-for-link in case lane deskew is locked */
	FUNC5(hw);

	return (status);
}