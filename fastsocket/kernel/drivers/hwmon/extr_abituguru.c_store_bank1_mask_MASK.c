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
typedef  int /*<<< orphan*/  u8 ;
struct sensor_device_attribute_2 {size_t index; int /*<<< orphan*/  nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** bank1_settings; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ ABIT_UGURU_SENSOR_BANK1 ; 
 size_t EIO ; 
 int FUNC0 (struct abituguru_data*,scalar_t__,size_t,int /*<<< orphan*/ *,int) ; 
 struct abituguru_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
	struct device_attribute *devattr, const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *attr = FUNC5(devattr);
	struct abituguru_data *data = FUNC1(dev);
	int mask = FUNC4(buf, NULL, 10);
	ssize_t ret = count;
	u8 orig_val;

	FUNC2(&data->update_lock);
	orig_val = data->bank1_settings[attr->index][0];

	if (mask)
		data->bank1_settings[attr->index][0] |= attr->nr;
	else
		data->bank1_settings[attr->index][0] &= ~attr->nr;

	if ((data->bank1_settings[attr->index][0] != orig_val) &&
			(FUNC0(data,
			ABIT_UGURU_SENSOR_BANK1 + 2, attr->index,
			data->bank1_settings[attr->index], 3) < 1)) {
		data->bank1_settings[attr->index][0] = orig_val;
		ret = -EIO;
	}
	FUNC3(&data->update_lock);
	return ret;
}