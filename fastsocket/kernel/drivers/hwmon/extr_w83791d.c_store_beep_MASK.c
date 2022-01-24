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
struct w83791d_data {int beep_mask; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * W83791D_REG_BEEP_CTRL ; 
 struct w83791d_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr =
						FUNC5(attr);
	struct i2c_client *client = FUNC4(dev);
	struct w83791d_data *data = FUNC0(client);
	int bitnr = sensor_attr->index;
	int bytenr = bitnr / 8;
	long val = FUNC3(buf, NULL, 10) ? 1 : 0;

	FUNC1(&data->update_lock);

	data->beep_mask &= ~(0xff << (bytenr * 8));
	data->beep_mask |= FUNC6(client, W83791D_REG_BEEP_CTRL[bytenr])
		<< (bytenr * 8);

	data->beep_mask &= ~(1 << bitnr);
	data->beep_mask |= val << bitnr;

	FUNC7(client, W83791D_REG_BEEP_CTRL[bytenr],
		(data->beep_mask >> (bytenr * 8)) & 0xff);

	FUNC2(&data->update_lock);

	return count;
}