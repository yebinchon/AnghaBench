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
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {TYPE_1__* rx_ring; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int reg_idx; scalar_t__ count; } ;

/* Variables and functions */
 int IXGBE_MAX_RX_DESC_POLL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(struct ixgbevf_adapter *adapter,
						int rxr)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int j = adapter->rx_ring[rxr].reg_idx;
	int k;

	for (k = 0; k < IXGBE_MAX_RX_DESC_POLL; k++) {
		if (FUNC0(hw, FUNC1(j)) & IXGBE_RXDCTL_ENABLE)
			break;
		else
			FUNC4(1);
	}
	if (k >= IXGBE_MAX_RX_DESC_POLL) {
		FUNC2(hw, "RXDCTL.ENABLE on Rx queue %d "
		       "not set within the polling period\n", rxr);
	}

	FUNC3(hw, &adapter->rx_ring[rxr],
				adapter->rx_ring[rxr].count - 1);
}