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
struct qlcnic_host_tx_ring {int irq; struct qlcnic_adapter* adapter; struct qlcnic_cmd_buffer* cmd_buf_arr; int /*<<< orphan*/  txq; int /*<<< orphan*/  num_desc; } ;
struct qlcnic_cmd_buffer {int dummy; } ;
struct qlcnic_adapter {int max_drv_tx_rings; int flags; int max_sds_rings; TYPE_1__* msix_entries; struct qlcnic_host_tx_ring* tx_ring; int /*<<< orphan*/  num_txd; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int vector; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QLCNIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct qlcnic_host_tx_ring* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 struct qlcnic_cmd_buffer* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct qlcnic_adapter *adapter,
			  struct net_device *netdev)
{
	int ring, size, vector, index;
	struct qlcnic_host_tx_ring *tx_ring;
	struct qlcnic_cmd_buffer *cmd_buf_arr;

	size = adapter->max_drv_tx_rings * sizeof(struct qlcnic_host_tx_ring);
	tx_ring = FUNC2(size, GFP_KERNEL);
	if (tx_ring == NULL) {
		FUNC1(&netdev->dev, "failed to allocate tx rings\n");
		return -ENOMEM;
	}
	adapter->tx_ring = tx_ring;

	for (ring = 0; ring < adapter->max_drv_tx_rings; ring++) {
		tx_ring = &adapter->tx_ring[ring];
		tx_ring->num_desc = adapter->num_txd;
		tx_ring->txq = FUNC4(netdev, ring);
		cmd_buf_arr = FUNC7(FUNC0(tx_ring));
		if (cmd_buf_arr == NULL) {
			FUNC1(&netdev->dev,
				"failed to allocate cmd buffer ring\n");
			FUNC6(adapter);
			return -ENOMEM;
		}
		FUNC3(cmd_buf_arr, 0, FUNC0(tx_ring));
		tx_ring->cmd_buf_arr = cmd_buf_arr;
	}

	if (FUNC5(adapter)) {
		for (ring = 0; ring < adapter->max_drv_tx_rings; ring++) {
			tx_ring = &adapter->tx_ring[ring];
			tx_ring->adapter = adapter;
			if (adapter->flags & QLCNIC_MSIX_ENABLED) {
				index = adapter->max_sds_rings + ring;
				vector = adapter->msix_entries[index].vector;
				tx_ring->irq = vector;
			}
		}
	}
	return 0;
}