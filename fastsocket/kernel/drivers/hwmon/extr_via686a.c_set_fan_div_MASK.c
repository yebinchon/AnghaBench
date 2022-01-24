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
struct via686a_data {int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  VIA686A_REG_FANDIV ; 
 struct via686a_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 
 int FUNC6 (struct via686a_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct via686a_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *da,
		const char *buf, size_t count) {
	struct via686a_data *data = FUNC1(dev);
	struct sensor_device_attribute *attr = FUNC5(da);
	int nr = attr->index;
	int val = FUNC4(buf, NULL, 10);
	int old;

	FUNC2(&data->update_lock);
	old = FUNC6(data, VIA686A_REG_FANDIV);
	data->fan_div[nr] = FUNC0(val);
	old = (old & 0x0f) | (data->fan_div[1] << 6) | (data->fan_div[0] << 4);
	FUNC7(data, VIA686A_REG_FANDIV, old);
	FUNC3(&data->update_lock);
	return count;
}