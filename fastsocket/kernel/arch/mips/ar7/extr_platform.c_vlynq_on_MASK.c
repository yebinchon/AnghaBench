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
struct TYPE_2__ {struct plat_vlynq_data* platform_data; } ;
struct vlynq_device {TYPE_1__ dev; } ;
struct plat_vlynq_data {int /*<<< orphan*/  gpio_bit; int /*<<< orphan*/  reset_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct vlynq_device *dev)
{
	int result;
	struct plat_vlynq_data *pdata = dev->dev.platform_data;

	result = FUNC6(pdata->gpio_bit, "vlynq");
	if (result)
		goto out;

	FUNC1(pdata->reset_bit);

	result = FUNC2(pdata->gpio_bit);
	if (result)
		goto out_enabled;

	result = FUNC3(pdata->gpio_bit);
	if (result)
		goto out_enabled;

	result = FUNC4(pdata->gpio_bit, 0);
	if (result)
		goto out_gpio_enabled;

	FUNC8(50);

	FUNC7(pdata->gpio_bit, 1);
	FUNC8(50);

	return 0;

out_gpio_enabled:
	FUNC2(pdata->gpio_bit);
out_enabled:
	FUNC0(pdata->reset_bit);
	FUNC5(pdata->gpio_bit);
out:
	return result;
}