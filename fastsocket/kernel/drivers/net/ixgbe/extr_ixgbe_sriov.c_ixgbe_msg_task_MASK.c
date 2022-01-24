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
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {scalar_t__ num_vfs; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*,scalar_t__) ; 

void FUNC6(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 vf;

	for (vf = 0; vf < adapter->num_vfs; vf++) {
		/* process any reset requests */
		if (!FUNC2(hw, vf))
			FUNC5(adapter, vf);

		/* process any messages pending */
		if (!FUNC1(hw, vf))
			FUNC4(adapter, vf);

		/* process any acks */
		if (!FUNC0(hw, vf))
			FUNC3(adapter, vf);
	}
}