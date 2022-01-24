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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ max_tx_queues; scalar_t__ max_rx_queues; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ IXGBE_DCA_RXCTRL_DATA_WRO_EN ; 
 scalar_t__ IXGBE_DCA_RXCTRL_HEAD_WRO_EN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ IXGBE_DCA_TXCTRL_DESC_WRO_EN ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RTTBCNRC ; 
 int /*<<< orphan*/  IXGBE_RTTDQSEL ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

s32 FUNC5(struct ixgbe_hw *hw)
{
	u32 i;
	u32 regval;

	/* Clear the rate limiters */
	for (i = 0; i < hw->mac.max_tx_queues; i++) {
		FUNC4(hw, IXGBE_RTTDQSEL, i);
		FUNC4(hw, IXGBE_RTTBCNRC, 0);
	}
	FUNC3(hw);

	/* Disable relaxed ordering */
	for (i = 0; i < hw->mac.max_tx_queues; i++) {
		regval = FUNC2(hw, FUNC1(i));
		regval &= ~IXGBE_DCA_TXCTRL_DESC_WRO_EN;
		FUNC4(hw, FUNC1(i), regval);
	}

	for (i = 0; i < hw->mac.max_rx_queues; i++) {
		regval = FUNC2(hw, FUNC0(i));
		regval &= ~(IXGBE_DCA_RXCTRL_DATA_WRO_EN |
			    IXGBE_DCA_RXCTRL_HEAD_WRO_EN);
		FUNC4(hw, FUNC0(i), regval);
	}

	return 0;
}