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
struct vt1211_data {long** pwm_auto_pwm; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,long) ; 
 struct vt1211_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct vt1211_data*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct vt1211_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sensor_attr_2 =
						FUNC6(attr);
	int ix = sensor_attr_2->index;
	int ap = sensor_attr_2->nr;
	long val = FUNC5(buf, NULL, 10);

	if ((val < 0) || (val > 255)) {
		FUNC1(dev, "pwm value %ld is out of range. "
			"Choose a value between 0 and 255.\n" , val);
		return -EINVAL;
	}

	FUNC3(&data->update_lock);
	data->pwm_auto_pwm[ix][ap] = val;
	FUNC7(data, FUNC0(ix, ap),
		      data->pwm_auto_pwm[ix][ap]);
	FUNC4(&data->update_lock);

	return count;
}