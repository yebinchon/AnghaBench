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
typedef  int u16 ;
struct w83627ehf_data {int* pwm_mode; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int* W83627EHF_PWM_MODE_SHIFT ; 
 int /*<<< orphan*/ * W83627EHF_REG_PWM_ENABLE ; 
 struct w83627ehf_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 
 int FUNC5 (struct w83627ehf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct w83627ehf_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct w83627ehf_data *data = FUNC0(dev);
	struct sensor_device_attribute *sensor_attr = FUNC4(attr);
	int nr = sensor_attr->index;
	u32 val = FUNC3(buf, NULL, 10);
	u16 reg;

	if (val > 1)
		return -EINVAL;
	FUNC1(&data->update_lock);
	reg = FUNC5(data, W83627EHF_REG_PWM_ENABLE[nr]);
	data->pwm_mode[nr] = val;
	reg &= ~(1 << W83627EHF_PWM_MODE_SHIFT[nr]);
	if (!val)
		reg |= 1 << W83627EHF_PWM_MODE_SHIFT[nr];
	FUNC6(data, W83627EHF_REG_PWM_ENABLE[nr], reg);
	FUNC2(&data->update_lock);
	return count;
}