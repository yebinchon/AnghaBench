#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sensor_device_attribute_2 {int nr; int index; } ;
struct f71805f_data {int /*<<< orphan*/  update_lock; TYPE_1__* auto_points; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/ * temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct f71805f_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct f71805f_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				       struct device_attribute *devattr,
				       const char* buf, size_t count)
{
	struct f71805f_data *data = FUNC1(dev);
	struct sensor_device_attribute_2 *attr = FUNC7(devattr);
	int pwmnr = attr->nr;
	int apnr = attr->index;
	unsigned long val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	data->auto_points[pwmnr].temp[apnr] = FUNC6(val);
	FUNC2(data, FUNC0(pwmnr, apnr),
		       data->auto_points[pwmnr].temp[apnr]);
	FUNC4(&data->update_lock);

	return count;
}