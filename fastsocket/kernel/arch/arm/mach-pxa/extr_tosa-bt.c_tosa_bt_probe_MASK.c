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
struct tosa_bt_data {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  gpio_pwr; } ;
struct rfkill {int dummy; } ;
struct TYPE_2__ {struct tosa_bt_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct rfkill*) ; 
 struct rfkill* FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tosa_bt_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfkill*) ; 
 int FUNC6 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC7 (struct rfkill*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tosa_bt_data*) ; 
 int /*<<< orphan*/  tosa_bt_rfkill_ops ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	int rc;
	struct rfkill *rfk;

	struct tosa_bt_data *data = dev->dev.platform_data;

	rc = FUNC2(data->gpio_reset, "Bluetooth reset");
	if (rc)
		goto err_reset;
	rc = FUNC0(data->gpio_reset, 0);
	if (rc)
		goto err_reset_dir;
	rc = FUNC2(data->gpio_pwr, "Bluetooth power");
	if (rc)
		goto err_pwr;
	rc = FUNC0(data->gpio_pwr, 0);
	if (rc)
		goto err_pwr_dir;

	rfk = FUNC4("tosa-bt", &dev->dev, RFKILL_TYPE_BLUETOOTH,
			   &tosa_bt_rfkill_ops, data);
	if (!rfk) {
		rc = -ENOMEM;
		goto err_rfk_alloc;
	}

	FUNC7(rfk, "tosa-bt");

	rc = FUNC6(rfk);
	if (rc)
		goto err_rfkill;

	FUNC3(dev, rfk);

	return 0;

err_rfkill:
	FUNC5(rfk);
err_rfk_alloc:
	FUNC8(data);
err_pwr_dir:
	FUNC1(data->gpio_pwr);
err_pwr:
err_reset_dir:
	FUNC1(data->gpio_reset);
err_reset:
	return rc;
}