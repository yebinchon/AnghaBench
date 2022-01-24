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
struct it87_data {int* fan_div; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IT87_REG_FAN_DIV ; 
 int /*<<< orphan*/ * IT87_REG_FAN_MIN ; 
 struct it87_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct it87_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC8(attr);
	int nr = sensor_attr->index;

	struct it87_data *data = FUNC2(dev);
	int val = FUNC7(buf, NULL, 10);
	u8 reg;

	FUNC5(&data->update_lock);
	reg = FUNC3(data, IT87_REG_FAN_DIV);
	switch (nr) {
	case 0: data->fan_div[nr] = reg & 0x07; break;
	case 1: data->fan_div[nr] = (reg >> 3) & 0x07; break;
	case 2: data->fan_div[nr] = (reg & 0x40) ? 3 : 1; break;
	}

	data->fan_min[nr] = FUNC1(val, FUNC0(data->fan_div[nr]));
	FUNC4(data, IT87_REG_FAN_MIN[nr], data->fan_min[nr]);
	FUNC6(&data->update_lock);
	return count;
}