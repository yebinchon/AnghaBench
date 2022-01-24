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
typedef  int u8 ;
struct w83793_data {int beep_enable; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  W83793_REG_OVT_BEEP ; 
 struct w83793_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
		  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC4(dev);
	struct w83793_data *data = FUNC0(client);
	u8 val = FUNC3(buf, NULL, 10);

	if (val != 0 && val != 1)
		return -EINVAL;

	FUNC1(&data->update_lock);
	data->beep_enable = FUNC5(client, W83793_REG_OVT_BEEP)
			    & 0xfd;
	data->beep_enable |= val << 1;
	FUNC6(client, W83793_REG_OVT_BEEP, data->beep_enable);
	FUNC2(&data->update_lock);

	return count;
}