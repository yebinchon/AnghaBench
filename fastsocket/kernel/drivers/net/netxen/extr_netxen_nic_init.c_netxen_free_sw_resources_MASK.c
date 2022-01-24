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
struct nx_host_tx_ring {int /*<<< orphan*/ * cmd_buf_arr; int /*<<< orphan*/ * rx_buf_arr; } ;
struct nx_host_rds_ring {int /*<<< orphan*/ * cmd_buf_arr; int /*<<< orphan*/ * rx_buf_arr; } ;
struct netxen_recv_context {struct nx_host_tx_ring* rds_rings; } ;
struct netxen_adapter {int max_rds_rings; struct nx_host_tx_ring* tx_ring; struct netxen_recv_context recv_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nx_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct netxen_adapter *adapter)
{
	struct netxen_recv_context *recv_ctx;
	struct nx_host_rds_ring *rds_ring;
	struct nx_host_tx_ring *tx_ring;
	int ring;

	recv_ctx = &adapter->recv_ctx;

	if (recv_ctx->rds_rings == NULL)
		goto skip_rds;

	for (ring = 0; ring < adapter->max_rds_rings; ring++) {
		rds_ring = &recv_ctx->rds_rings[ring];
		FUNC1(rds_ring->rx_buf_arr);
		rds_ring->rx_buf_arr = NULL;
	}
	FUNC0(recv_ctx->rds_rings);

skip_rds:
	if (adapter->tx_ring == NULL)
		return;

	tx_ring = adapter->tx_ring;
	FUNC1(tx_ring->cmd_buf_arr);
	FUNC0(tx_ring);
	adapter->tx_ring = NULL;
}