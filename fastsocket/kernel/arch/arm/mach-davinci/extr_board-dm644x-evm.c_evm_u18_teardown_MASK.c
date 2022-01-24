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
 int /*<<< orphan*/  dev_attr_user_sw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int sw_gpio ; 

__attribute__((used)) static int
FUNC2(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
{
	FUNC1(gpio + 1);
	FUNC1(gpio + 2);
	FUNC1(gpio + 3);

	if (sw_gpio > 0) {
		FUNC0(&client->dev, &dev_attr_user_sw);
		FUNC1(sw_gpio);
	}
	return 0;
}