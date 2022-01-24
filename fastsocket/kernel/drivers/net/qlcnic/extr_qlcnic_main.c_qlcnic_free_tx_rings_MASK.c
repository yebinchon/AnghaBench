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
struct qlcnic_host_tx_ring {int /*<<< orphan*/ * cmd_buf_arr; } ;
struct qlcnic_adapter {int max_drv_tx_rings; struct qlcnic_host_tx_ring* tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlcnic_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct qlcnic_adapter *adapter)
{
	int ring;
	struct qlcnic_host_tx_ring *tx_ring;

	for (ring = 0; ring < adapter->max_drv_tx_rings; ring++) {
		tx_ring = &adapter->tx_ring[ring];
		if (tx_ring && tx_ring->cmd_buf_arr != NULL) {
			FUNC1(tx_ring->cmd_buf_arr);
			tx_ring->cmd_buf_arr = NULL;
		}
	}
	if (adapter->tx_ring != NULL)
		FUNC0(adapter->tx_ring);
}