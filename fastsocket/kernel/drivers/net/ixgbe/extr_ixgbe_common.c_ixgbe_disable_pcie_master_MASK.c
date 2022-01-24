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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ixgbe_hw {TYPE_1__ mac; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CTRL ; 
 int /*<<< orphan*/  IXGBE_CTRL_GIO_DIS ; 
 int /*<<< orphan*/  IXGBE_ERR_MASTER_REQUESTS_PENDING ; 
 int /*<<< orphan*/  IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ; 
 int /*<<< orphan*/  IXGBE_PCI_DEVICE_STATUS ; 
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ; 
 scalar_t__ IXGBE_PCI_MASTER_DISABLE_TIMEOUT ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_STATUS ; 
 int IXGBE_STATUS_GIO ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw)
{
	struct ixgbe_adapter *adapter = hw->back;
	s32 status = 0;
	u32 i;
	u16 value;

	/* Always set this bit to ensure any future transactions are blocked */
	FUNC1(hw, IXGBE_CTRL, IXGBE_CTRL_GIO_DIS);

	/* Exit if master requests are blocked */
	if (!(FUNC0(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO))
		goto out;

	/* Poll for master request bit to clear */
	for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
		FUNC4(100);
		if (!(FUNC0(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO))
			goto out;
	}

	/*
	 * Two consecutive resets are required via CTRL.RST per datasheet
	 * 5.2.5.3.2 Master Disable.  We set a flag to inform the reset routine
	 * of this need.  The first reset prevents new master requests from
	 * being issued by our device.  We then must wait 1usec or more for any
	 * remaining completions from the PCIe bus to trickle in, and then reset
	 * again to clear out any effects they may have had on our device.
	 */
	FUNC2(hw, "GIO Master Disable bit didn't clear - requesting resets\n");
	hw->mac.flags |= IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;

	/*
	 * Before proceeding, make sure that the PCIe block does not have
	 * transactions pending.
	 */
	for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
		FUNC4(100);
		FUNC3(adapter->pdev, IXGBE_PCI_DEVICE_STATUS,
							 &value);
		if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
			goto out;
	}

	FUNC2(hw, "PCIe transaction pending bit also did not clear.\n");
	status = IXGBE_ERR_MASTER_REQUESTS_PENDING;

out:
	return status;
}