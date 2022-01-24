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
struct sis5595_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_min; int /*<<< orphan*/ * fan_div; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct sis5595_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sis5595_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *da,
			   const char *buf, size_t count)
{
	struct sis5595_data *data = FUNC3(dev);
	struct sensor_device_attribute *attr = FUNC8(da);
	int nr = attr->index;
	unsigned long val = FUNC6(buf, NULL, 10);

	FUNC4(&data->update_lock);
	data->fan_min[nr] = FUNC1(val, FUNC0(data->fan_div[nr]));
	FUNC7(data, FUNC2(nr), data->fan_min[nr]);
	FUNC5(&data->update_lock);
	return count;
}