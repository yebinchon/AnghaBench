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
struct skb_shared_hwtstamps {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int /*<<< orphan*/ * ptp_tx_skb; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_TXSTMPH ; 
 int /*<<< orphan*/  E1000_TXSTMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,struct skb_shared_hwtstamps*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct skb_shared_hwtstamps*) ; 

void FUNC4(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct skb_shared_hwtstamps shhwtstamps;
	u64 regval;

	regval = FUNC2(E1000_TXSTMPL);
	regval |= (u64)FUNC2(E1000_TXSTMPH) << 32;

	FUNC1(adapter, &shhwtstamps, regval);
	FUNC3(adapter->ptp_tx_skb, &shhwtstamps);
	FUNC0(adapter->ptp_tx_skb);
	adapter->ptp_tx_skb = NULL;
}