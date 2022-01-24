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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VLNCTRL ; 
 int IXGBE_VLNCTRL_CFIEN ; 
 int IXGBE_VLNCTRL_VFE ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 vlnctrl;

	vlnctrl = FUNC0(hw, IXGBE_VLNCTRL);
	vlnctrl &= ~(IXGBE_VLNCTRL_VFE | IXGBE_VLNCTRL_CFIEN);
	FUNC1(hw, IXGBE_VLNCTRL, vlnctrl);
}