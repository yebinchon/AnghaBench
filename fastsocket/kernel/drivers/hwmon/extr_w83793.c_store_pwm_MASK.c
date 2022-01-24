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
struct w83793_data {int* pwm_stop_time; int** pwm; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int PWM_STOP_TIME ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct w83793_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *attr,
	  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct w83793_data *data = FUNC4(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC9(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	u8 val;

	FUNC5(&data->update_lock);
	if (PWM_STOP_TIME == nr) {
		val = FUNC1(FUNC7(buf, NULL, 10));
		data->pwm_stop_time[index] = val;
		FUNC11(client, FUNC3(index),
				   val);
	} else {
		val = FUNC0(FUNC7(buf, NULL, 10), 0, 0xff)
		      >> 2;
		data->pwm[index][nr] =
		    FUNC10(client, FUNC2(index, nr)) & 0xc0;
		data->pwm[index][nr] |= val;
		FUNC11(client, FUNC2(index, nr),
							data->pwm[index][nr]);
	}

	FUNC6(&data->update_lock);
	return count;
}