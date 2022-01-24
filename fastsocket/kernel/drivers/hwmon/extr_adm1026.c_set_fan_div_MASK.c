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
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int* fan_div; int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1026_REG_FAN_DIV_0_3 ; 
 int /*<<< orphan*/  ADM1026_REG_FAN_DIV_4_7 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int) ; 
 struct adm1026_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC9(attr);
	int nr = sensor_attr->index;
	struct i2c_client *client = FUNC8(dev);
	struct adm1026_data *data = FUNC4(client);
	int val, orig_div, new_div, shift;

	val = FUNC7(buf, NULL, 10);
	new_div = FUNC1(val);
	if (new_div == 0) {
		return -EINVAL;
	}
	FUNC5(&data->update_lock);
	orig_div = data->fan_div[nr];
	data->fan_div[nr] = FUNC0(new_div);

	if (nr < 4) { /* 0 <= nr < 4 */
		shift = 2 * nr;
		FUNC2(client, ADM1026_REG_FAN_DIV_0_3,
			((FUNC1(orig_div) & (~(0x03 << shift))) |
			(new_div << shift)));
	} else { /* 3 < nr < 8 */
		shift = 2 * (nr - 4);
		FUNC2(client, ADM1026_REG_FAN_DIV_4_7,
			((FUNC1(orig_div) & (~(0x03 << (2 * shift)))) |
			(new_div << shift)));
	}

	if (data->fan_div[nr] != orig_div) {
		FUNC3(dev, nr, orig_div);
	}
	FUNC6(&data->update_lock);
	return count;
}