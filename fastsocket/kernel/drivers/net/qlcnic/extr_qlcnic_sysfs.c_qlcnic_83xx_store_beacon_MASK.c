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
struct qlcnic_hardware_context {unsigned long beacon_state; } ;
struct qlcnic_adapter {int /*<<< orphan*/  state; struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  __QLCNIC_LED_ENABLE ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct qlcnic_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char const*,int,unsigned long*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct qlcnic_adapter *adapter,
				    const char *buf, size_t len)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	unsigned long h_beacon;
	int err;

	if (FUNC6(__QLCNIC_RESETTING, &adapter->state))
		return -EIO;

	if (FUNC4(buf, 2, &h_beacon))
		return -EINVAL;

	if (ahw->beacon_state == h_beacon)
		return len;

	FUNC2();
	if (!ahw->beacon_state) {
		if (FUNC5(__QLCNIC_LED_ENABLE, &adapter->state)) {
			FUNC3();
			return -EBUSY;
		}
	}

	if (h_beacon)
		err = FUNC1(adapter, 1, h_beacon);
	else
		err = FUNC1(adapter, 0, !h_beacon);
	if (!err)
		ahw->beacon_state = h_beacon;

	if (!ahw->beacon_state)
		FUNC0(__QLCNIC_LED_ENABLE, &adapter->state);

	FUNC3();
	return len;
}