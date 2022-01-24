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
typedef  int u32 ;
struct w83793_data {int* in_low_bits; int** in; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** W83793_REG_IN ; 
 int /*<<< orphan*/ * W83793_REG_IN_LOW_BITS ; 
 struct w83793_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int* scale_in ; 
 int* scale_in_add ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
	 const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC6(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC5(dev);
	struct w83793_data *data = FUNC1(client);
	u32 val;

	val =
	    (FUNC4(buf, NULL, 10) +
	     scale_in[index] / 2) / scale_in[index];
	FUNC2(&data->update_lock);
	if (index > 2) {
		/* fix the limit values of 5VDD and 5VSB to ALARM mechanism */
		if (1 == nr || 2 == nr) {
			val -= scale_in_add[index] / scale_in[index];
		}
		val = FUNC0(val, 0, 255);
	} else {
		val = FUNC0(val, 0, 0x3FF);
		data->in_low_bits[nr] =
		    FUNC7(client, W83793_REG_IN_LOW_BITS[nr]);
		data->in_low_bits[nr] &= ~(0x03 << (2 * index));
		data->in_low_bits[nr] |= (val & 0x03) << (2 * index);
		FUNC8(client, W83793_REG_IN_LOW_BITS[nr],
						     data->in_low_bits[nr]);
		val >>= 2;
	}
	data->in[index][nr] = val;
	FUNC8(client, W83793_REG_IN[index][nr],
							data->in[index][nr]);
	FUNC3(&data->update_lock);
	return count;
}