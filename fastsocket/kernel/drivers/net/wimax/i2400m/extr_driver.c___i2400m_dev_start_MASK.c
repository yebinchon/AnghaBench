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
struct wimax_dev {int /*<<< orphan*/  name; struct net_device* net_dev; } ;
struct net_device {int dummy; } ;
struct i2400m {int bus_bm_retries; int (* bus_dev_start ) (struct i2400m*) ;int ready; int /*<<< orphan*/ * work_queue; int /*<<< orphan*/  (* bus_dev_stop ) (struct i2400m*) ;struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;
typedef  enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;

/* Variables and functions */
 int EL3RST ; 
 int ENOMEM ; 
 int I2400M_BRI_MAC_REINIT ; 
 int I2400M_BRI_SOFT ; 
 int /*<<< orphan*/  WIMAX_ST_UNINITIALIZED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct net_device*,struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int FUNC5 (struct i2400m*) ; 
 struct device* FUNC6 (struct i2400m*) ; 
 int FUNC7 (struct i2400m*,int) ; 
 int FUNC8 (struct i2400m*) ; 
 int FUNC9 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2400m*) ; 
 int FUNC11 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC12 (struct i2400m*) ; 
 int FUNC13 (struct i2400m*) ; 
 int FUNC14 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC15 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC16 (struct wimax_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC17(struct i2400m *i2400m, enum i2400m_bri flags)
{
	int result;
	struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
	struct net_device *net_dev = wimax_dev->net_dev;
	struct device *dev = FUNC6(i2400m);
	int times = i2400m->bus_bm_retries;

	FUNC2(3, dev, "(i2400m %p)\n", i2400m);
retry:
	result = FUNC7(i2400m, flags);
	if (result < 0) {
		FUNC4(dev, "cannot bootstrap device: %d\n", result);
		goto error_bootstrap;
	}
	result = FUNC13(i2400m);
	if (result < 0)
		goto error_tx_setup;
	result = FUNC11(i2400m);
	if (result < 0)
		goto error_rx_setup;
	i2400m->work_queue = FUNC0(wimax_dev->name);
	if (i2400m->work_queue == NULL) {
		result = -ENOMEM;
		FUNC4(dev, "cannot create workqueue\n");
		goto error_create_workqueue;
	}
	result = i2400m->bus_dev_start(i2400m);
	if (result < 0)
		goto error_bus_dev_start;
	result = FUNC9(i2400m);	/* fw versions ok? */
	if (result < 0)
		goto error_fw_check;
	/* At this point is ok to send commands to the device */
	result = FUNC5(i2400m);
	if (result < 0)
		goto error_check_mac_addr;
	i2400m->ready = 1;
	FUNC16(wimax_dev, WIMAX_ST_UNINITIALIZED);
	result = FUNC8(i2400m);
	if (result < 0)
		goto error_dev_initialize;
	/* At this point, reports will come for the device and set it
	 * to the right state if it is different than UNINITIALIZED */
	FUNC1(3, dev, "(net_dev %p [i2400m %p]) = %d\n",
		net_dev, i2400m, result);
	return result;

error_dev_initialize:
error_check_mac_addr:
error_fw_check:
	i2400m->bus_dev_stop(i2400m);
error_bus_dev_start:
	FUNC3(i2400m->work_queue);
error_create_workqueue:
	FUNC10(i2400m);
error_rx_setup:
	FUNC12(i2400m);
error_tx_setup:
error_bootstrap:
	if (result == -EL3RST && times-- > 0) {
		flags = I2400M_BRI_SOFT|I2400M_BRI_MAC_REINIT;
		goto retry;
	}
	FUNC1(3, dev, "(net_dev %p [i2400m %p]) = %d\n",
		net_dev, i2400m, result);
	return result;
}