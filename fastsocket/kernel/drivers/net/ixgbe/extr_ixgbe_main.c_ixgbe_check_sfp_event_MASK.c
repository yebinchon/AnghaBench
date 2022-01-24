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
struct ixgbe_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  state; int /*<<< orphan*/  flags2; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EICR ; 
 int IXGBE_EICR_GPI_SDP1 ; 
 int IXGBE_EICR_GPI_SDP2 ; 
 int /*<<< orphan*/  IXGBE_FLAG2_SFP_NEEDS_RESET ; 
 int /*<<< orphan*/  IXGBE_FLAG_NEED_LINK_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_adapter *adapter, u32 eicr)
{
	struct ixgbe_hw *hw = &adapter->hw;

	if (eicr & IXGBE_EICR_GPI_SDP2) {
		/* Clear the interrupt */
		FUNC0(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP2);
		if (!FUNC2(__IXGBE_DOWN, &adapter->state)) {
			adapter->flags2 |= IXGBE_FLAG2_SFP_NEEDS_RESET;
			FUNC1(adapter);
		}
	}

	if (eicr & IXGBE_EICR_GPI_SDP1) {
		/* Clear the interrupt */
		FUNC0(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP1);
		if (!FUNC2(__IXGBE_DOWN, &adapter->state)) {
			adapter->flags |= IXGBE_FLAG_NEED_LINK_CONFIG;
			FUNC1(adapter);
		}
	}
}