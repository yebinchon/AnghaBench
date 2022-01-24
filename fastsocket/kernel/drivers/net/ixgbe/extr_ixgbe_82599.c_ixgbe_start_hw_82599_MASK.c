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
struct TYPE_2__ {int autotry_restart; int /*<<< orphan*/  rx_pb_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_82599_RX_PB_SIZE ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw)
{
	s32 ret_val = 0;

	ret_val = FUNC1(hw);
	if (ret_val != 0)
		goto out;

	ret_val = FUNC0(hw);
	if (ret_val != 0)
		goto out;

	/* We need to run link autotry after the driver loads */
	hw->mac.autotry_restart = true;
	hw->mac.rx_pb_size = IXGBE_82599_RX_PB_SIZE;

	if (ret_val == 0)
		ret_val = FUNC2(hw);
out:
	return ret_val;
}