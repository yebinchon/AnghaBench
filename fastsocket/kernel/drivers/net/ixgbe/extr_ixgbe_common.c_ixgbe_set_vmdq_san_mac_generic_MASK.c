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
typedef  int u32 ;
struct TYPE_2__ {int san_mac_rar_index; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

s32 FUNC3(struct ixgbe_hw *hw, u32 vmdq)
{
	u32 rar = hw->mac.san_mac_rar_index;

	if (vmdq < 32) {
		FUNC2(hw, FUNC1(rar), 1 << vmdq);
		FUNC2(hw, FUNC0(rar), 0);
	} else {
		FUNC2(hw, FUNC1(rar), 0);
		FUNC2(hw, FUNC0(rar), 1 << (vmdq - 32));
	}

	return 0;
}