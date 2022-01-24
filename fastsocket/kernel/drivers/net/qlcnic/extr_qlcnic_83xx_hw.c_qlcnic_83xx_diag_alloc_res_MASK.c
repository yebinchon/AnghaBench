#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  scalar_t__ u16 ;
struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_host_rds_ring {int dummy; } ;
struct qlcnic_adapter {scalar_t__ is_up; int max_sds_rings; size_t max_rds_rings; int flags; int /*<<< orphan*/  state; TYPE_3__* ahw; TYPE_1__* recv_ctx; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int diag_test; TYPE_2__* hw_ops; scalar_t__ loopback_state; scalar_t__ linkup; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* setup_link_event ) (struct qlcnic_adapter*,int) ;} ;
struct TYPE_4__ {struct qlcnic_host_sds_ring* sds_rings; struct qlcnic_host_rds_ring* rds_rings; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ; 
 int QLCNIC_INTERRUPT_TEST ; 
 int QLCNIC_LOOPBACK_TEST ; 
 int QLCNIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,struct qlcnic_host_sds_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 
 int FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct qlcnic_adapter*,int) ; 

__attribute__((used)) static int FUNC13(struct net_device *netdev, int test,
				      int num_sds_ring)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	struct qlcnic_host_sds_ring *sds_ring;
	struct qlcnic_host_rds_ring *rds_ring;
	u16 adapter_state = adapter->is_up;
	u8 ring;
	int ret;

	FUNC3(netdev);

	if (FUNC4(netdev))
		FUNC0(adapter, netdev);

	FUNC8(adapter);

	adapter->max_sds_rings = 1;
	adapter->ahw->diag_test = test;
	adapter->ahw->linkup = 0;

	ret = FUNC7(adapter);
	if (ret) {
		FUNC2(netdev);
		return ret;
	}

	ret = FUNC9(adapter);
	if (ret) {
		FUNC8(adapter);
		if (adapter_state == QLCNIC_ADAPTER_UP_MAGIC) {
			adapter->max_sds_rings = num_sds_ring;
			FUNC7(adapter);
		}
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
			FUNC5(adapter, sds_ring);
		}
	}

	if (adapter->ahw->diag_test == QLCNIC_LOOPBACK_TEST) {
		/* disable and free mailbox interrupt */
		if (!(adapter->flags & QLCNIC_MSIX_ENABLED))
			FUNC6(adapter);
		adapter->ahw->loopback_state = 0;
		adapter->ahw->hw_ops->setup_link_event(adapter, 1);
	}

	FUNC11(__QLCNIC_DEV_UP, &adapter->state);
	return 0;
}