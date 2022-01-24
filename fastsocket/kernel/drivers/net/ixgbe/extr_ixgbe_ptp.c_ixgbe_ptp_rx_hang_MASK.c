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
struct ixgbe_ring {unsigned long last_rx_timestamp; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {unsigned long last_rx_ptp_check; int num_rx_queues; struct ixgbe_ring** rx_ring; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RXSTMPH ; 
 int /*<<< orphan*/  IXGBE_TSYNCRXCTL ; 
 int IXGBE_TSYNCRXCTL_VALID ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

void FUNC4(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct ixgbe_ring *rx_ring;
	u32 tsyncrxctl = FUNC0(hw, IXGBE_TSYNCRXCTL);
	unsigned long rx_event;
	int n;

	/* if we don't have a valid timestamp in the registers, just update the
	 * timeout counter and exit
	 */
	if (!(tsyncrxctl & IXGBE_TSYNCRXCTL_VALID)) {
		adapter->last_rx_ptp_check = jiffies;
		return;
	}

	/* determine the most recent watchdog or rx_timestamp event */
	rx_event = adapter->last_rx_ptp_check;
	for (n = 0; n < adapter->num_rx_queues; n++) {
		rx_ring = adapter->rx_ring[n];
		if (FUNC2(rx_ring->last_rx_timestamp, rx_event))
			rx_event = rx_ring->last_rx_timestamp;
	}

	/* only need to read the high RXSTMP register to clear the lock */
	if (FUNC3(rx_event + 5*HZ)) {
		FUNC0(hw, IXGBE_RXSTMPH);
		adapter->last_rx_ptp_check = jiffies;

		FUNC1(drv, "clearing RX Timestamp hang");
	}
}