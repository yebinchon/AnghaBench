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
struct ixgbevf_adapter {int num_tx_queues; int /*<<< orphan*/  hw; int /*<<< orphan*/ * tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct ixgbevf_adapter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ixgbevf_adapter *adapter)
{
	int i, err = 0;

	for (i = 0; i < adapter->num_tx_queues; i++) {
		err = FUNC1(adapter, &adapter->tx_ring[i]);
		if (!err)
			continue;
		FUNC0(&adapter->hw,
		       "Allocation for Tx Queue %u failed\n", i);
		break;
	}

	return err;
}