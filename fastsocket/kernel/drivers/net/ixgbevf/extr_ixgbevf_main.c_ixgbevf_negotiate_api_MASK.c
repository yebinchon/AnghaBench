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
struct ixgbevf_adapter {int /*<<< orphan*/  mbx_lock; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int ixgbe_mbox_api_10 ; 
 int ixgbe_mbox_api_11 ; 
 int ixgbe_mbox_api_unknown ; 
 int FUNC0 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ixgbevf_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int api[] = { ixgbe_mbox_api_11,
		      ixgbe_mbox_api_10,
		      ixgbe_mbox_api_unknown };
	int err = 0, idx = 0;

	FUNC1(&adapter->mbx_lock);

	while (api[idx] != ixgbe_mbox_api_unknown) {
		err = FUNC0(hw, api[idx]);
		if (!err)
			break;
		idx++;
	}

	FUNC2(&adapter->mbx_lock);
}