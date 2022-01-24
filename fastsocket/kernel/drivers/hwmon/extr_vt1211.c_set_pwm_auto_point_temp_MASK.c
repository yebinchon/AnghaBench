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
struct vt1211_data {int* pwm_ctl; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * pwm_auto_temp; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  VT1211_REG_PWM_CTL ; 
 struct vt1211_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct vt1211_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vt1211_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf, size_t count)
{
	struct vt1211_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sensor_attr_2 =
						FUNC6(attr);
	int ix = sensor_attr_2->index;
	int ap = sensor_attr_2->nr;
	long val = FUNC5(buf, NULL, 10);
	int reg;

	FUNC3(&data->update_lock);

	/* sync the data cache */
	reg = FUNC7(data, VT1211_REG_PWM_CTL);
	data->pwm_ctl[0] = reg & 0xf;
	data->pwm_ctl[1] = (reg >> 4) & 0xf;

	data->pwm_auto_temp[ap] = FUNC0(data->pwm_ctl[ix] & 7, val);
	FUNC8(data, FUNC1(ap),
		      data->pwm_auto_temp[ap]);
	FUNC4(&data->update_lock);

	return count;
}