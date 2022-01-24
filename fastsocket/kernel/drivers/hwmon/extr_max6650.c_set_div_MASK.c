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
struct max6650_data {int count; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  MAX6650_REG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct max6650_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *devattr,
		       const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct max6650_data *data = FUNC1(client);
	int div = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	switch (div) {
	case 1:
		data->count = 0;
		break;
	case 2:
		data->count = 1;
		break;
	case 4:
		data->count = 2;
		break;
	case 8:
		data->count = 3;
		break;
	default:
		FUNC4(&data->update_lock);
		FUNC0(&client->dev,
			"illegal value for fan divider (%d)\n", div);
		return -EINVAL;
	}

	FUNC2(client, MAX6650_REG_COUNT, data->count);
	FUNC4(&data->update_lock);

	return count;
}