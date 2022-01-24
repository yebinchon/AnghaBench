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
typedef  scalar_t__ u64 ;
struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIME ; 
 int HZ ; 
 int /*<<< orphan*/  I2400MS_INIT_SLEEP_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct sdio_func*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 () ; 
 int ioe_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static
int FUNC11(struct sdio_func *func)
{
	u64 timeout;
	int err;
	struct device *dev = &func->dev;

	FUNC1(3, dev, "(func %p)\n", func);
	/* Setup timeout (FIXME: This needs to read the CIS table to
	 * get a real timeout) and then wait for the device to signal
	 * it is ready */
	timeout = FUNC4() + ioe_timeout * HZ;
	err = -ENODEV;
	while (err != 0 && FUNC10(FUNC4(), timeout)) {
		FUNC6(func);
		err = FUNC8(func);
		if (0 == err) {
			FUNC9(func);
			FUNC2(2, dev, "SDIO function enabled\n");
			goto function_enabled;
		}
		FUNC2(2, dev, "SDIO function failed to enable: %d\n", err);
		FUNC7(func);
		FUNC9(func);
		FUNC5(I2400MS_INIT_SLEEP_INTERVAL);
	}
	/* If timed out, device is not there yet -- get -ENODEV so
	 * the device driver core will retry later on. */
	if (err == -ETIME) {
		FUNC3(dev, "Can't enable WiMAX function; "
			" has the function been enabled?\n");
		err = -ENODEV;
	}
function_enabled:
	FUNC0(3, dev, "(func %p) = %d\n", func, err);
	return err;
}