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
typedef  int /*<<< orphan*/  u32 ;
struct w83781d_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * pwm; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * W83781D_REG_PWM ; 
 struct w83781d_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC6 (struct w83781d_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *da, const char *buf,
		size_t count)
{
	struct sensor_device_attribute *attr = FUNC5(da);
	struct w83781d_data *data = FUNC1(dev);
	int nr = attr->index;
	u32 val;

	val = FUNC4(buf, NULL, 10);

	FUNC2(&data->update_lock);
	data->pwm[nr] = FUNC0(val, 0, 255);
	FUNC6(data, W83781D_REG_PWM[nr], data->pwm[nr]);
	FUNC3(&data->update_lock);
	return count;
}