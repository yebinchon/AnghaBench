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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_hardware_context {scalar_t__ op_mode; scalar_t__ has_link_events; scalar_t__ linkup; } ;
struct qlcnic_adapter {int max_sds_rings; int flags; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; int /*<<< orphan*/  state; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int QLCNIC_FW_NOT_RESPOND ; 
 int /*<<< orphan*/  QLCNIC_ILB_MAX_RCV_LOOP ; 
 int /*<<< orphan*/  QLCNIC_ILB_MODE ; 
 int /*<<< orphan*/  QLCNIC_LOOPBACK_TEST ; 
 int QLCNIC_MSIX_ENABLED ; 
 scalar_t__ QLCNIC_NON_PRIV_FUNC ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 struct qlcnic_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qlcnic_adapter*) ; 
 int FUNC12 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC17(struct net_device *netdev, u8 mode)
{
	struct qlcnic_adapter *adapter = FUNC3(netdev);
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int ret = 0, loop = 0, max_sds_rings = adapter->max_sds_rings;

	if (ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
		FUNC4(netdev,
			    "Loopback test not supported in non privileged mode\n");
		return ret;
	}

	if (FUNC16(__QLCNIC_RESETTING, &adapter->state)) {
		FUNC2(netdev, "Device is resetting\n");
		return -EBUSY;
	}

	if (FUNC14(adapter)) {
		FUNC2(netdev, "Device is in diagnostics mode\n");
		return -EBUSY;
	}

	FUNC2(netdev, "%s loopback test in progress\n",
		    mode == QLCNIC_ILB_MODE ? "internal" : "external");

	ret = FUNC9(netdev, QLCNIC_LOOPBACK_TEST,
					 max_sds_rings);
	if (ret)
		goto fail_diag_alloc;

	ret = FUNC12(adapter, mode);
	if (ret)
		goto free_diag_res;

	/* Poll for link up event before running traffic */
	do {
		FUNC1(500);
		if (!(adapter->flags & QLCNIC_MSIX_ENABLED))
			FUNC11(adapter);

		if (loop++ > QLCNIC_ILB_MAX_RCV_LOOP) {
			FUNC0(&adapter->pdev->dev,
				 "Firmware didn't sent link up event to loopback request\n");
			ret = -QLCNIC_FW_NOT_RESPOND;
			FUNC8(adapter, mode);
			goto free_diag_res;
		}
	} while ((adapter->ahw->linkup && ahw->has_link_events) != 1);

	/* Make sure carrier is off and queue is stopped during loopback */
	if (FUNC6(netdev)) {
		FUNC5(netdev);
		FUNC7(netdev);
	}

	ret = FUNC13(adapter, mode);

	FUNC8(adapter, mode);

free_diag_res:
	FUNC10(netdev, max_sds_rings);

fail_diag_alloc:
	adapter->max_sds_rings = max_sds_rings;
	FUNC15(adapter);
	return ret;
}