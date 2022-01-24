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
struct net_device {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int flags; int num_tx_queues; int /*<<< orphan*/  pdev; TYPE_1__* tx_ring; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  state; struct ixgbe_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int reg_idx; } ;

/* Variables and functions */
 int IXGBE_FLAG_IN_WATCHDOG_TASK ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int IXGBE_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC15(struct ixgbevf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct ixgbe_hw *hw = &adapter->hw;
	u32 txdctl;
	int i, j;

	/* signal that we are down to the interrupt handler */
	FUNC14(__IXGBEVF_DOWN, &adapter->state);
	/* disable receives */

	FUNC11(netdev);

	FUNC9(10);

	FUNC12(netdev);

	FUNC6(adapter);

	FUNC7(adapter);

	FUNC3(&adapter->watchdog_timer);
	/* can't call flush scheduled work here because it can deadlock
	 * if linkwatch_event tries to acquire the rtnl_lock which we are
	 * holding */
	while (adapter->flags & IXGBE_FLAG_IN_WATCHDOG_TASK)
		FUNC9(1);

	/* disable transmits in the hardware now that interrupts are off */
	for (i = 0; i < adapter->num_tx_queues; i++) {
		j = adapter->tx_ring[i].reg_idx;
		txdctl = FUNC0(hw, FUNC1(j));
		FUNC2(hw, FUNC1(j),
				(txdctl & ~IXGBE_TXDCTL_ENABLE));
	}

	FUNC10(netdev);

	if (!FUNC13(adapter->pdev))
		FUNC8(adapter);

	FUNC5(adapter);
	FUNC4(adapter);
}