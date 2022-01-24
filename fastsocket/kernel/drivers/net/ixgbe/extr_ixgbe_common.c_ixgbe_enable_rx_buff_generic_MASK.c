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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SECRXCTRL ; 
 int IXGBE_SECRXCTRL_RX_DIS ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

s32 FUNC3(struct ixgbe_hw *hw)
{
	int secrxreg;

	secrxreg = FUNC0(hw, IXGBE_SECRXCTRL);
	secrxreg &= ~IXGBE_SECRXCTRL_RX_DIS;
	FUNC2(hw, IXGBE_SECRXCTRL, secrxreg);
	FUNC1(hw);

	return 0;
}