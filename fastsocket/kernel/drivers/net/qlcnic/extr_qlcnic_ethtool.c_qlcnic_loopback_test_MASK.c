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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_hardware_context {int capabilities; scalar_t__ op_mode; int diag_cnt; int /*<<< orphan*/  loopback_state; } ;
struct qlcnic_adapter {int max_sds_rings; int /*<<< orphan*/  state; struct qlcnic_hardware_context* ahw; TYPE_2__* recv_ctx; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct qlcnic_host_sds_ring* sds_rings; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int QLCNIC_FW_CAPABILITY_MULTI_LOOPBACK ; 
 int QLCNIC_FW_NOT_RESPOND ; 
 int /*<<< orphan*/  QLCNIC_ILB_MAX_RCV_LOOP ; 
 int /*<<< orphan*/  QLCNIC_ILB_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLCNIC_LOOPBACK_TEST ; 
 scalar_t__ QLCNIC_NON_PRIV_FUNC ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct qlcnic_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct qlcnic_adapter*) ; 
 int FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int) ; 
 int FUNC12 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct qlcnic_host_sds_ring*) ; 
 int FUNC14 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC16(struct net_device *netdev, u8 mode)
{
	struct qlcnic_adapter *adapter = FUNC6(netdev);
	int max_sds_rings = adapter->max_sds_rings;
	struct qlcnic_host_sds_ring *sds_ring;
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int loop = 0;
	int ret;

	if (FUNC7(adapter))
		return FUNC8(netdev, mode);

	if (!(adapter->ahw->capabilities &
	      QLCNIC_FW_CAPABILITY_MULTI_LOOPBACK)) {
		FUNC2(&adapter->pdev->dev,
			 "Firmware do not support loopback test\n");
		return -EOPNOTSUPP;
	}

	FUNC3(&adapter->pdev->dev, "%s loopback test in progress\n",
		 mode == QLCNIC_ILB_MODE ? "internal" : "external");
	if (ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
		FUNC3(&adapter->pdev->dev,
			 "Loopback test not supported in nonprivileged mode\n");
		return 0;
	}

	if (FUNC15(__QLCNIC_RESETTING, &adapter->state))
		return -EBUSY;

	ret = FUNC10(netdev, QLCNIC_LOOPBACK_TEST);
	if (ret)
		goto clear_it;

	sds_ring = &adapter->recv_ctx->sds_rings[0];
	ret = FUNC14(adapter, mode);
	if (ret)
		goto free_res;

	ahw->diag_cnt = 0;
	do {
		FUNC4(500);
		FUNC13(sds_ring);
		if (loop++ > QLCNIC_ILB_MAX_RCV_LOOP) {
			FUNC5(netdev, "firmware didnt respond to loopback"
				" configure request\n");
			ret = -QLCNIC_FW_NOT_RESPOND;
			goto free_res;
		} else if (adapter->ahw->diag_cnt) {
			ret = adapter->ahw->diag_cnt;
			goto free_res;
		}
	} while (!FUNC0(ahw->loopback_state));

	ret = FUNC12(adapter, mode);

	FUNC9(adapter, mode);

 free_res:
	FUNC11(netdev, max_sds_rings);

 clear_it:
	adapter->max_sds_rings = max_sds_rings;
	FUNC1(__QLCNIC_RESETTING, &adapter->state);
	return ret;
}