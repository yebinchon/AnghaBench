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
struct tsl2550_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  power_state; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct i2c_client*,char*) ; 
 struct tsl2550_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC4(dev);
	struct tsl2550_data *data = FUNC1(client);
	int ret;

	/* No LUX data if not operational */
	if (!data->power_state)
		return -EBUSY;

	FUNC2(&data->update_lock);
	ret = FUNC0(client, buf);
	FUNC3(&data->update_lock);

	return ret;
}