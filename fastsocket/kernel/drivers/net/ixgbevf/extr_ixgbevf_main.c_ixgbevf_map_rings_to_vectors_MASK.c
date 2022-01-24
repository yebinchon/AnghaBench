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
struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; int num_msix_vectors; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int NON_Q_VECTORS ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*,int,int) ; 

__attribute__((used)) static int FUNC3(struct ixgbevf_adapter *adapter)
{
	int q_vectors;
	int v_start = 0;
	int rxr_idx = 0, txr_idx = 0;
	int rxr_remaining = adapter->num_rx_queues;
	int txr_remaining = adapter->num_tx_queues;
	int i, j;
	int rqpv, tqpv;
	int err = 0;

	q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;

	/*
	 * The ideal configuration...
	 * We have enough vectors to map one per queue.
	 */
	if (q_vectors == adapter->num_rx_queues + adapter->num_tx_queues) {
		for (; rxr_idx < rxr_remaining; v_start++, rxr_idx++)
			FUNC1(adapter, v_start, rxr_idx);

		for (; txr_idx < txr_remaining; v_start++, txr_idx++)
			FUNC2(adapter, v_start, txr_idx);
		goto out;
	}

	/*
	 * If we don't have enough vectors for a 1-to-1
	 * mapping, we'll have to group them so there are
	 * multiple queues per vector.
	 */
	/* Re-adjusting *qpv takes care of the remainder. */
	for (i = v_start; i < q_vectors; i++) {
		rqpv = FUNC0(rxr_remaining, q_vectors - i);
		for (j = 0; j < rqpv; j++) {
			FUNC1(adapter, i, rxr_idx);
			rxr_idx++;
			rxr_remaining--;
		}
	}
	for (i = v_start; i < q_vectors; i++) {
		tqpv = FUNC0(txr_remaining, q_vectors - i);
		for (j = 0; j < tqpv; j++) {
			FUNC2(adapter, i, txr_idx);
			txr_idx++;
			txr_remaining--;
		}
	}

out:
	return err;
}