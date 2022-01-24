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
struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_host_rds_ring {int dummy; } ;
struct qlcnic_adapter {int max_sds_rings; int max_rds_rings; int /*<<< orphan*/  state; TYPE_2__* ahw; TYPE_1__* recv_ctx; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int diag_test; scalar_t__ loopback_state; scalar_t__ linkup; } ;
struct TYPE_3__ {struct qlcnic_host_sds_ring* sds_rings; struct qlcnic_host_rds_ring* rds_rings; } ;

/* Variables and functions */
 int QLCNIC_INTERRUPT_TEST ; 
 int QLCNIC_LOOPBACK_TEST ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_host_sds_ring*) ; 
 int FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct net_device *netdev, int test)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	struct qlcnic_host_sds_ring *sds_ring;
	struct qlcnic_host_rds_ring *rds_ring;
	int ring;
	int ret;

	FUNC3(netdev);

	if (FUNC4(netdev))
		FUNC0(adapter, netdev);

	FUNC6(adapter);

	adapter->max_sds_rings = 1;
	adapter->ahw->diag_test = test;
	adapter->ahw->linkup = 0;

	ret = FUNC5(adapter);
	if (ret) {
		FUNC2(netdev);
		return ret;
	}

	ret = FUNC8(adapter);
	if (ret) {
		FUNC6(adapter);
		FUNC2(netdev);
		return ret;
	}

	for (ring = 0; ring < adapter->max_rds_rings; ring++) {
		rds_ring = &adapter->recv_ctx->rds_rings[ring];
		FUNC10(adapter, rds_ring, ring);
	}

	if (adapter->ahw->diag_test == QLCNIC_INTERRUPT_TEST) {
		for (ring = 0; ring < adapter->max_sds_rings; ring++) {
			sds_ring = &adapter->recv_ctx->sds_rings[ring];
			FUNC7(sds_ring);
		}
	}

	if (adapter->ahw->diag_test == QLCNIC_LOOPBACK_TEST) {
		adapter->ahw->loopback_state = 0;
		FUNC9(adapter, 1);
	}

	FUNC11(__QLCNIC_DEV_UP, &adapter->state);

	return 0;
}