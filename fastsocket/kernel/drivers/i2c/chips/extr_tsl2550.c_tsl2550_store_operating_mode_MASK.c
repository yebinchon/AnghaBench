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
struct tsl2550_data {scalar_t__ power_state; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct tsl2550_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct i2c_client *client = FUNC4(dev);
	struct tsl2550_data *data = FUNC0(client);
	unsigned long val = FUNC3(buf, NULL, 10);
	int ret;

	if (val < 0 || val > 1)
		return -EINVAL;

	if (data->power_state == 0)
		return -EBUSY;

	FUNC1(&data->update_lock);
	ret = FUNC5(client, val);
	FUNC2(&data->update_lock);

	if (ret < 0)
		return ret;

	return count;
}