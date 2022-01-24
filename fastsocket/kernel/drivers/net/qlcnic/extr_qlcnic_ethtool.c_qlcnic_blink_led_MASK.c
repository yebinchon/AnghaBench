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
typedef  int u32 ;
struct qlcnic_adapter {int num_sds_rings; int /*<<< orphan*/  state; TYPE_3__* pdev; TYPE_2__* nic_ops; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int (* config_led ) (struct qlcnic_adapter*,int,int) ;} ;
struct TYPE_4__ {scalar_t__ op_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QLCNIC_LED_TEST ; 
 scalar_t__ QLCNIC_NON_PRIV_FUNC ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  __QLCNIC_DIAG_RES_ALLOC ; 
 int /*<<< orphan*/  __QLCNIC_LED_ENABLE ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct qlcnic_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int FUNC6 (struct qlcnic_adapter*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct qlcnic_adapter*,int,int) ; 
 int FUNC11 (struct qlcnic_adapter*,int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev, u32 val)
{
	struct qlcnic_adapter *adapter = FUNC3(dev);
	int max_sds_rings = adapter->num_sds_rings;
	int ret = 0;

	if (adapter->ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
		FUNC4(dev,
			"LED test not supported for non privilege function\n");
		return -EOPNOTSUPP;
	}

	if (FUNC5(adapter) &&
	    !FUNC14(__QLCNIC_RESETTING, &adapter->state)) {

		if (FUNC13(__QLCNIC_LED_ENABLE, &adapter->state))
			return -EBUSY;

		ret = FUNC6(adapter, 1, 0);
		if (ret)
			goto led_err;

		FUNC2(val * 1000);

		ret = FUNC6(adapter, 0, 0);
led_err:
		FUNC0(__QLCNIC_LED_ENABLE, &adapter->state);
		return ret;
	}

	if (FUNC13(__QLCNIC_LED_ENABLE, &adapter->state))
		return -EBUSY;

	if (FUNC14(__QLCNIC_RESETTING, &adapter->state))
		goto done;

	if (!FUNC14(__QLCNIC_DEV_UP, &adapter->state)) {
		ret = FUNC7(dev, QLCNIC_LED_TEST);
		if (ret)
			goto done;
		FUNC9(__QLCNIC_DIAG_RES_ALLOC, &adapter->state);
	}

	ret = adapter->nic_ops->config_led(adapter, 1, 0xf);
	if (ret) {
		FUNC1(&adapter->pdev->dev,
			"Failed to set LED blink state.\n");
		goto done;
	}

	if (FUNC12(__QLCNIC_DIAG_RES_ALLOC, &adapter->state))
		FUNC8(dev, max_sds_rings);

	FUNC2(val * 1000);

	if (FUNC14(__QLCNIC_RESETTING, &adapter->state))
		goto done;

	if (!FUNC14(__QLCNIC_DEV_UP, &adapter->state)) {
		ret = FUNC7(dev, QLCNIC_LED_TEST);
		if (ret)
			goto done;
		FUNC9(__QLCNIC_DIAG_RES_ALLOC, &adapter->state);
	}

	ret = adapter->nic_ops->config_led(adapter, 0, 0xf);
	if (ret)
		FUNC1(&adapter->pdev->dev,
			"Failed to reset LED blink state.\n");

done:
	if (FUNC12(__QLCNIC_DIAG_RES_ALLOC, &adapter->state))
		FUNC8(dev, max_sds_rings);

	FUNC0(__QLCNIC_LED_ENABLE, &adapter->state);
	return ret;

}