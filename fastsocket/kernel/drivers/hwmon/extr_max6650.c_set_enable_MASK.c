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
struct max6650_data {int config; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int MAX6650_CFG_MODE_MASK ; 
 int /*<<< orphan*/  MAX6650_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct max6650_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *devattr,
			  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct max6650_data *data = FUNC1(client);
	int mode = FUNC6(buf, NULL, 10);
	int max6650_modes[3] = {0, 3, 2};

	if ((mode < 0)||(mode > 2)) {
		FUNC0(&client->dev,
			"illegal value for pwm1_enable (%d)\n", mode);
		return -EINVAL;
	}

	FUNC4(&data->update_lock);

	data->config = FUNC2(client, MAX6650_REG_CONFIG);
	data->config = (data->config & ~MAX6650_CFG_MODE_MASK)
		       | (max6650_modes[mode] << 4);

	FUNC3(client, MAX6650_REG_CONFIG, data->config);

	FUNC5(&data->update_lock);

	return count;
}