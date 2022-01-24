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
struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; } ;
struct qlcnic_host_sds_ring {int /*<<< orphan*/  napi; } ;
struct qlcnic_adapter {int max_sds_rings; struct qlcnic_recv_context* recv_ctx; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int QLCNIC_NETDEV_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct qlcnic_recv_context*,int) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_recv_context*) ; 
 int /*<<< orphan*/  qlcnic_poll ; 
 int /*<<< orphan*/  qlcnic_rx_poll ; 

int FUNC4(struct qlcnic_adapter *adapter,
			 struct net_device *netdev)
{
	int ring, max_sds_rings;
	struct qlcnic_host_sds_ring *sds_ring;
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;

	if (FUNC1(recv_ctx, adapter->max_sds_rings))
		return -ENOMEM;

	max_sds_rings = adapter->max_sds_rings;

	for (ring = 0; ring < adapter->max_sds_rings; ring++) {
		sds_ring = &recv_ctx->sds_rings[ring];
		if (ring == adapter->max_sds_rings - 1)
			FUNC0(netdev, &sds_ring->napi, qlcnic_poll,
				       QLCNIC_NETDEV_WEIGHT / max_sds_rings);
		else
			FUNC0(netdev, &sds_ring->napi, qlcnic_rx_poll,
				       QLCNIC_NETDEV_WEIGHT*2);
	}

	if (FUNC2(adapter, netdev)) {
		FUNC3(recv_ctx);
		return -ENOMEM;
	}

	return 0;
}