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
struct smsc47m1_data {int* fan_preload; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_div; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/ * SMSC47M1_REG_FAN_PRELOAD ; 
 struct smsc47m1_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc47m1_data*,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute
			   *devattr, const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct smsc47m1_data *data = FUNC1(dev);
	int nr = attr->index;
	long rpmdiv, val = FUNC4(buf, NULL, 10);

	FUNC2(&data->update_lock);
	rpmdiv = val * FUNC0(data->fan_div[nr]);

	if (983040 > 192 * rpmdiv || 2 * rpmdiv > 983040) {
		FUNC3(&data->update_lock);
		return -EINVAL;
	}

	data->fan_preload[nr] = 192 - ((983040 + rpmdiv / 2) / rpmdiv);
	FUNC5(data, SMSC47M1_REG_FAN_PRELOAD[nr],
			     data->fan_preload[nr]);
	FUNC3(&data->update_lock);

	return count;
}