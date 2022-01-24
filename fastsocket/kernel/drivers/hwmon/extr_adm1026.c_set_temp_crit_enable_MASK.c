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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int config1; int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1026_REG_CONFIG1 ; 
 int CFG1_THERM_HOT ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adm1026_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct adm1026_data *data = FUNC1(client);
	int val = FUNC4(buf, NULL, 10);

	if ((val == 1) || (val==0)) {
		FUNC2(&data->update_lock);
		data->config1 = (data->config1 & ~CFG1_THERM_HOT) | (val << 4);
		FUNC0(client, ADM1026_REG_CONFIG1,
			data->config1);
		FUNC3(&data->update_lock);
	}
	return count;
}