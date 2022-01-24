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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  dev_attr_user_sw ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char*) ; 
 int sw_gpio ; 

__attribute__((used)) static int
FUNC5(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
{
	int	status;

	/* export dip switch option */
	sw_gpio = gpio + 7;
	status = FUNC4(sw_gpio, "user_sw");
	if (status == 0)
		status = FUNC1(sw_gpio);
	if (status == 0)
		status = FUNC0(&client->dev, &dev_attr_user_sw);
	else
		FUNC3(sw_gpio);
	if (status != 0)
		sw_gpio = -EINVAL;

	/* audio PLL:  48 kHz (vs 44.1 or 32), single rate (vs double) */
	FUNC4(gpio + 3, "pll_fs2");
	FUNC2(gpio + 3, 0);

	FUNC4(gpio + 2, "pll_fs1");
	FUNC2(gpio + 2, 0);

	FUNC4(gpio + 1, "pll_sr");
	FUNC2(gpio + 1, 0);

	return 0;
}