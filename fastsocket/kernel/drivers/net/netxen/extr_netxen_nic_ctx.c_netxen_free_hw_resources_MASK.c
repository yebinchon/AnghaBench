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
typedef  int /*<<< orphan*/  uint32_t ;
struct nx_host_tx_ring {int /*<<< orphan*/ * desc_head; int /*<<< orphan*/  phys_addr; } ;
struct nx_host_sds_ring {int /*<<< orphan*/ * desc_head; int /*<<< orphan*/  phys_addr; } ;
struct nx_host_rds_ring {int /*<<< orphan*/ * desc_head; int /*<<< orphan*/  phys_addr; } ;
struct netxen_ring_ctx {int dummy; } ;
struct netxen_recv_context {struct nx_host_sds_ring* sds_rings; struct nx_host_rds_ring* rds_rings; int /*<<< orphan*/ * hwctx; int /*<<< orphan*/  phys_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {int portnum; int max_rds_rings; int max_sds_rings; int /*<<< orphan*/  pdev; struct nx_host_tx_ring* tx_ring; struct netxen_recv_context recv_ctx; int /*<<< orphan*/  state; TYPE_1__ ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NETXEN_CTX_D3_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nx_host_rds_ring*) ; 
 int FUNC4 (struct nx_host_sds_ring*) ; 
 int FUNC5 (struct nx_host_tx_ring*) ; 
 int /*<<< orphan*/  __NX_FW_ATTACHED ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(struct netxen_adapter *adapter)
{
	struct netxen_recv_context *recv_ctx;
	struct nx_host_rds_ring *rds_ring;
	struct nx_host_sds_ring *sds_ring;
	struct nx_host_tx_ring *tx_ring;
	int ring;

	int port = adapter->portnum;

	if (!FUNC2(adapter->ahw.revision_id)) {
		if (!FUNC12(__NX_FW_ATTACHED, &adapter->state))
			goto done;

		FUNC9(adapter);
		FUNC10(adapter);
	} else {
		FUNC7(adapter);
		FUNC1(adapter, FUNC0(port),
				NETXEN_CTX_D3_RESET | port);
		FUNC8(adapter);
	}

	/* Allow dma queues to drain after context reset */
	FUNC6(20);

done:
	recv_ctx = &adapter->recv_ctx;

	if (recv_ctx->hwctx != NULL) {
		FUNC11(adapter->pdev,
				sizeof(struct netxen_ring_ctx) +
				sizeof(uint32_t),
				recv_ctx->hwctx,
				recv_ctx->phys_addr);
		recv_ctx->hwctx = NULL;
	}

	tx_ring = adapter->tx_ring;
	if (tx_ring->desc_head != NULL) {
		FUNC11(adapter->pdev,
				FUNC5(tx_ring),
				tx_ring->desc_head, tx_ring->phys_addr);
		tx_ring->desc_head = NULL;
	}

	for (ring = 0; ring < adapter->max_rds_rings; ring++) {
		rds_ring = &recv_ctx->rds_rings[ring];

		if (rds_ring->desc_head != NULL) {
			FUNC11(adapter->pdev,
					FUNC3(rds_ring),
					rds_ring->desc_head,
					rds_ring->phys_addr);
			rds_ring->desc_head = NULL;
		}
	}

	for (ring = 0; ring < adapter->max_sds_rings; ring++) {
		sds_ring = &recv_ctx->sds_rings[ring];

		if (sds_ring->desc_head != NULL) {
			FUNC11(adapter->pdev,
				FUNC4(sds_ring),
				sds_ring->desc_head,
				sds_ring->phys_addr);
			sds_ring->desc_head = NULL;
		}
	}
}