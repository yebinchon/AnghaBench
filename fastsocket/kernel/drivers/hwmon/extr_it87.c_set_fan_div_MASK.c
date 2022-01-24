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
struct sensor_device_attribute {int index; } ;
struct it87_data {unsigned long* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IT87_REG_FAN_DIV ; 
 int /*<<< orphan*/ * IT87_REG_FAN_MIN ; 
 struct it87_data* FUNC4 (struct device*) ; 
 int FUNC5 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct it87_data*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC10(attr);
	int nr = sensor_attr->index;

	struct it87_data *data = FUNC4(dev);
	unsigned long val = FUNC9(buf, NULL, 10);
	int min;
	u8 old;

	FUNC7(&data->update_lock);
	old = FUNC5(data, IT87_REG_FAN_DIV);

	/* Save fan min limit */
	min = FUNC2(data->fan_min[nr], FUNC0(data->fan_div[nr]));

	switch (nr) {
	case 0:
	case 1:
		data->fan_div[nr] = FUNC1(val);
		break;
	case 2:
		if (val < 8)
			data->fan_div[nr] = 1;
		else
			data->fan_div[nr] = 3;
	}
	val = old & 0x80;
	val |= (data->fan_div[0] & 0x07);
	val |= (data->fan_div[1] & 0x07) << 3;
	if (data->fan_div[2] == 3)
		val |= 0x1 << 6;
	FUNC6(data, IT87_REG_FAN_DIV, val);

	/* Restore fan min limit */
	data->fan_min[nr] = FUNC3(min, FUNC0(data->fan_div[nr]));
	FUNC6(data, IT87_REG_FAN_MIN[nr], data->fan_min[nr]);

	FUNC8(&data->update_lock);
	return count;
}