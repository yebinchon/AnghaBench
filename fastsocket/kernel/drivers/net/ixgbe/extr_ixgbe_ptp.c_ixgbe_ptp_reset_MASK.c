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
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int /*<<< orphan*/  tmreg_lock; int /*<<< orphan*/  cc; int /*<<< orphan*/  tc; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_SYSTIMH ; 
 int /*<<< orphan*/  IXGBE_SYSTIML ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	unsigned long flags;

	/* set SYSTIME registers to 0 just in case */
	FUNC1(hw, IXGBE_SYSTIML, 0x00000000);
	FUNC1(hw, IXGBE_SYSTIMH, 0x00000000);
	FUNC0(hw);

	FUNC3(adapter);

	FUNC6(&adapter->tmreg_lock, flags);

	/* reset the ns time counter */
	FUNC8(&adapter->tc, &adapter->cc,
			 FUNC5(FUNC4()));

	FUNC7(&adapter->tmreg_lock, flags);

	/*
	 * Now that the shift has been calculated and the systime
	 * registers reset, (re-)enable the Clock out feature
	 */
	FUNC2(adapter);
}