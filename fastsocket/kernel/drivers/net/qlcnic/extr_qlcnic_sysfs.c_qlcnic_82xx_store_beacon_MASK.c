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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_hardware_context {int capabilities2; int beacon_state; } ;
struct qlcnic_adapter {int max_sds_rings; int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 scalar_t__ QLCNIC_BEACON_DISABLE ; 
 scalar_t__ QLCNIC_BEACON_EANBLE ; 
 int QLCNIC_FW_CAPABILITY_2_BEACON ; 
 int /*<<< orphan*/  QLCNIC_LED_TEST ; 
 int QL_STATUS_INVALID_PARAM ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  __QLCNIC_DIAG_RES_ALLOC ; 
 int /*<<< orphan*/  __QLCNIC_LED_ENABLE ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC3 (struct qlcnic_adapter*,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct qlcnic_adapter*,scalar_t__*) ; 
 int FUNC7 (struct qlcnic_adapter*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct qlcnic_adapter *adapter,
				    const char *buf, size_t len)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int err, max_sds_rings = adapter->max_sds_rings;
	u16 beacon;
	u8 h_beacon_state, b_state, b_rate;

	if (len != sizeof(u16))
		return QL_STATUS_INVALID_PARAM;

	FUNC2(&beacon, buf, sizeof(u16));
	err = FUNC7(adapter, beacon, &b_state, &b_rate);
	if (err)
		return err;

	if ((ahw->capabilities2 & QLCNIC_FW_CAPABILITY_2_BEACON)) {
		err = FUNC6(adapter, &h_beacon_state);
		if (!err) {
			FUNC1(&adapter->pdev->dev,
				 "Failed to get current beacon state\n");
		} else {
			if (h_beacon_state == QLCNIC_BEACON_DISABLE)
				ahw->beacon_state = 0;
			else if (h_beacon_state == QLCNIC_BEACON_EANBLE)
				ahw->beacon_state = 2;
		}
	}

	if (ahw->beacon_state == b_state)
		return len;

	FUNC8();
	if (!ahw->beacon_state) {
		if (FUNC12(__QLCNIC_LED_ENABLE, &adapter->state)) {
			FUNC9();
			return -EBUSY;
		}
	}

	if (FUNC13(__QLCNIC_RESETTING, &adapter->state)) {
		err = -EIO;
		goto out;
	}

	if (!FUNC13(__QLCNIC_DEV_UP, &adapter->state)) {
		err = FUNC4(adapter->netdev, QLCNIC_LED_TEST);
		if (err)
			goto out;
		FUNC10(__QLCNIC_DIAG_RES_ALLOC, &adapter->state);
	}

	err = FUNC3(adapter, b_state, b_rate);
	if (!err) {
		err = len;
		ahw->beacon_state = b_state;
	}

	if (FUNC11(__QLCNIC_DIAG_RES_ALLOC, &adapter->state))
		FUNC5(adapter->netdev, max_sds_rings);

out:
	if (!ahw->beacon_state)
		FUNC0(__QLCNIC_LED_ENABLE, &adapter->state);
	FUNC9();

	return err;
}