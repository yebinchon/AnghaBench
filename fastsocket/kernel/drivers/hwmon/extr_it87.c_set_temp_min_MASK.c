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
struct sensor_device_attribute {int index; } ;
struct it87_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_low; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct it87_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct it87_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC7(attr);
	int nr = sensor_attr->index;

	struct it87_data *data = FUNC2(dev);
	int val = FUNC6(buf, NULL, 10);

	FUNC4(&data->update_lock);
	data->temp_low[nr] = FUNC1(val);
	FUNC3(data, FUNC0(nr), data->temp_low[nr]);
	FUNC5(&data->update_lock);
	return count;
}