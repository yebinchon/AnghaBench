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
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
#define  e1000_82573 128 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw)
{
	s32 ret_val;

	ret_val = FUNC0(hw);
	if (ret_val)
		return ret_val;

	switch (hw->mac.type) {
	case e1000_82573:
		break;
	default:
		ret_val = FUNC2(hw);
		break;
	}

	if (ret_val)
		FUNC1(hw);

	return ret_val;
}