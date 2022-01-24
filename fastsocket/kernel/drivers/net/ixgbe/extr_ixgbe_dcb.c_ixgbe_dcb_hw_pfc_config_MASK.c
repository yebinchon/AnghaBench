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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  ixgbe_mac_82598EB 130 
#define  ixgbe_mac_82599EB 129 
#define  ixgbe_mac_X540 128 

s32 FUNC2(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc)
{
	int ret = -EINVAL;

	switch (hw->mac.type) {
	case ixgbe_mac_82598EB:
		ret = FUNC0(hw, pfc_en);
		break;
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
		ret = FUNC1(hw, pfc_en, prio_tc);
		break;
	default:
		break;
	}
	return ret;
}