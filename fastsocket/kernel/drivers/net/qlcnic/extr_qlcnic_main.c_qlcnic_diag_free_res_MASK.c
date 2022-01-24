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
struct qlcnic_adapter {int max_sds_rings; TYPE_2__* ahw; TYPE_1__* recv_ctx; int /*<<< orphan*/  state; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ diag_test; } ;
struct TYPE_3__ {struct qlcnic_host_sds_ring* sds_rings; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_INTERRUPT_TEST ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_host_sds_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 

void FUNC9(struct net_device *netdev, int max_sds_rings)
{
	struct qlcnic_adapter *adapter = FUNC2(netdev);
	struct qlcnic_host_sds_ring *sds_ring;
	int ring;

	FUNC1(__QLCNIC_DEV_UP, &adapter->state);
	if (adapter->ahw->diag_test == QLCNIC_INTERRUPT_TEST) {
		for (ring = 0; ring < adapter->max_sds_rings; ring++) {
			sds_ring = &adapter->recv_ctx->sds_rings[ring];
			FUNC7(sds_ring);
		}
	}

	FUNC8(adapter);

	FUNC6(adapter);

	adapter->ahw->diag_test = 0;
	adapter->max_sds_rings = max_sds_rings;

	if (FUNC5(adapter))
		goto out;

	if (FUNC4(netdev))
		FUNC0(adapter, netdev);
out:
	FUNC3(netdev);
}