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
struct w83793_data {int** sf2_pwm; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct w83793_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC10(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct w83793_data *data = FUNC2(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC7(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	u8 val = FUNC0(FUNC5(buf, NULL, 10), 0, 0xff) >> 2;

	FUNC3(&data->update_lock);
	data->sf2_pwm[index][nr] =
	    FUNC8(client, FUNC1(index, nr)) & 0xc0;
	data->sf2_pwm[index][nr] |= val;
	FUNC9(client, FUNC1(index, nr),
						data->sf2_pwm[index][nr]);
	FUNC4(&data->update_lock);
	return count;
}