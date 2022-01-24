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
struct thmc50_data {int analog_out; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THMC50_REG_ANALOG_OUT ; 
 int /*<<< orphan*/  THMC50_REG_CONF ; 
 int THMC50_REG_CONF_nFANOFF ; 
 struct thmc50_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct thmc50_data *data = FUNC1(client);
	int tmp = FUNC6(buf, NULL, 10);
	int config;

	FUNC4(&data->update_lock);
	data->analog_out = FUNC0(tmp, 0, 255);
	FUNC3(client, THMC50_REG_ANALOG_OUT,
				  data->analog_out);

	config = FUNC2(client, THMC50_REG_CONF);
	if (data->analog_out == 0)
		config &= ~THMC50_REG_CONF_nFANOFF;
	else
		config |= THMC50_REG_CONF_nFANOFF;
	FUNC3(client, THMC50_REG_CONF, config);

	FUNC5(&data->update_lock);
	return count;
}