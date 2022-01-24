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
typedef  int u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int /*<<< orphan*/ * ptp_tx_skb; int /*<<< orphan*/  tmreg_lock; int /*<<< orphan*/  tc; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  shhwtstamps ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_TXSTMPH ; 
 int /*<<< orphan*/  IXGBE_TXSTMPL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct skb_shared_hwtstamps*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct skb_shared_hwtstamps shhwtstamps;
	u64 regval = 0, ns;
	unsigned long flags;

	regval |= (u64)FUNC0(hw, IXGBE_TXSTMPL);
	regval |= (u64)FUNC0(hw, IXGBE_TXSTMPH) << 32;

	FUNC5(&adapter->tmreg_lock, flags);
	ns = FUNC7(&adapter->tc, regval);
	FUNC6(&adapter->tmreg_lock, flags);

	FUNC2(&shhwtstamps, 0, sizeof(shhwtstamps));
	shhwtstamps.hwtstamp = FUNC3(ns);
	FUNC4(adapter->ptp_tx_skb, &shhwtstamps);

	FUNC1(adapter->ptp_tx_skb);
	adapter->ptp_tx_skb = NULL;
}