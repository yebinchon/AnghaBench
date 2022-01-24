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
struct ixgbe_adapter {int flags; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EICR ; 
 int IXGBE_EICR_GPI_SDP1 ; 
 int IXGBE_FLAG_FAN_FAIL_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static void FUNC2(struct ixgbe_adapter *adapter, u32 eicr)
{
	struct ixgbe_hw *hw = &adapter->hw;

	if ((adapter->flags & IXGBE_FLAG_FAN_FAIL_CAPABLE) &&
	    (eicr & IXGBE_EICR_GPI_SDP1)) {
		FUNC1(probe, "Fan has stopped, replace the adapter\n");
		/* write to clear the interrupt */
		FUNC0(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP1);
	}
}