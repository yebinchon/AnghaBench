#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int tx_bytes; unsigned int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int data; } ;
struct e1000_tx_desc {TYPE_1__ upper; } ;
struct e1000_ring {unsigned int next_to_clean; unsigned int count; unsigned int next_to_use; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_hw {int dummy; } ;
struct e1000_buffer {unsigned int next_to_watch; scalar_t__ time_stamp; scalar_t__ bytecount; scalar_t__ segs; } ;
struct e1000_adapter {int detect_tx_hung; int tx_timeout_factor; int tx_hang_recheck; unsigned int total_tx_bytes; unsigned int total_tx_packets; int /*<<< orphan*/  print_hang_task; int /*<<< orphan*/  restart_queue; int /*<<< orphan*/  state; struct e1000_hw hw; struct net_device* netdev; } ;

/* Variables and functions */
 int E1000_STATUS_TXOFF ; 
 int /*<<< orphan*/  E1000_TXD_STAT_DD ; 
 struct e1000_tx_desc* FUNC0 (struct e1000_ring,unsigned int) ; 
 int HZ ; 
 int /*<<< orphan*/  STATUS ; 
 scalar_t__ TX_WAKE_THRESHOLD ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct e1000_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_ring*,struct e1000_buffer*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC13(struct e1000_ring *tx_ring)
{
	struct e1000_adapter *adapter = tx_ring->adapter;
	struct net_device *netdev = adapter->netdev;
	struct e1000_hw *hw = &adapter->hw;
	struct e1000_tx_desc *tx_desc, *eop_desc;
	struct e1000_buffer *buffer_info;
	unsigned int i, eop;
	unsigned int count = 0;
	unsigned int total_tx_bytes = 0, total_tx_packets = 0;

	i = tx_ring->next_to_clean;
	eop = tx_ring->buffer_info[i].next_to_watch;
	eop_desc = FUNC0(*tx_ring, eop);

	while ((eop_desc->upper.data & FUNC1(E1000_TXD_STAT_DD)) &&
	       (count < tx_ring->count)) {
		bool cleaned = false;
		FUNC8();		/* read buffer_info after eop_desc */
		for (; !cleaned; count++) {
			tx_desc = FUNC0(*tx_ring, i);
			buffer_info = &tx_ring->buffer_info[i];
			cleaned = (i == eop);

			if (cleaned) {
				total_tx_packets += buffer_info->segs;
				total_tx_bytes += buffer_info->bytecount;
			}

			FUNC3(tx_ring, buffer_info);
			tx_desc->upper.data = 0;

			i++;
			if (i == tx_ring->count)
				i = 0;
		}

		if (i == tx_ring->next_to_use)
			break;
		eop = tx_ring->buffer_info[i].next_to_watch;
		eop_desc = FUNC0(*tx_ring, eop);
	}

	tx_ring->next_to_clean = i;

#define TX_WAKE_THRESHOLD 32
	if (count && FUNC5(netdev) &&
	    FUNC2(tx_ring) >= TX_WAKE_THRESHOLD) {
		/* Make sure that anybody stopping the queue after this
		 * sees the new next_to_clean.
		 */
		FUNC10();

		if (FUNC6(netdev) &&
		    !(FUNC11(__E1000_DOWN, &adapter->state))) {
			FUNC7(netdev);
			++adapter->restart_queue;
		}
	}

	if (adapter->detect_tx_hung) {
		/* Detect a transmit hang in hardware, this serializes the
		 * check with the clearing of time_stamp and movement of i
		 */
		adapter->detect_tx_hung = false;
		if (tx_ring->buffer_info[i].time_stamp &&
		    FUNC12(jiffies, tx_ring->buffer_info[i].time_stamp
			       + (adapter->tx_timeout_factor * HZ)) &&
		    !(FUNC4(STATUS) & E1000_STATUS_TXOFF))
			FUNC9(&adapter->print_hang_task);
		else
			adapter->tx_hang_recheck = false;
	}
	adapter->total_tx_bytes += total_tx_bytes;
	adapter->total_tx_packets += total_tx_packets;
	netdev->stats.tx_bytes += total_tx_bytes;
	netdev->stats.tx_packets += total_tx_packets;
	return count < tx_ring->count;
}