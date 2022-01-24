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
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VTEICR ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 

void FUNC5(struct ixgbevf_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;

	FUNC3(adapter);

	FUNC1(adapter);

	FUNC4(adapter);

	/* clear any pending interrupts, may auto mask */
	FUNC0(hw, IXGBE_VTEICR);

	FUNC2(adapter);
}