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
struct ixgbe_adapter {TYPE_1__* netdev; int /*<<< orphan*/ * ptp_clock; int /*<<< orphan*/ * ptp_tx_skb; int /*<<< orphan*/  ptp_tx_work; int /*<<< orphan*/  flags2; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_FLAG2_PTP_PPS_ENABLED ; 
 int /*<<< orphan*/  __IXGBE_PTP_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct ixgbe_adapter *adapter)
{
	/* Leave the IXGBE_PTP_RUNNING state. */
	if (!FUNC5(__IXGBE_PTP_RUNNING, &adapter->state))
		return;

	/* stop the PPS signal */
	adapter->flags2 &= ~IXGBE_FLAG2_PTP_PPS_ENABLED;
	FUNC3(adapter);

	FUNC0(&adapter->ptp_tx_work);
	if (adapter->ptp_tx_skb) {
		FUNC1(adapter->ptp_tx_skb);
		adapter->ptp_tx_skb = NULL;
	}

	if (adapter->ptp_clock) {
		FUNC4(adapter->ptp_clock);
		adapter->ptp_clock = NULL;
		FUNC2("removed PHC on %s\n",
			   adapter->netdev->name);
	}
}