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
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {int /*<<< orphan*/ * fan_max; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct adt7470_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			    struct device_attribute *devattr,
			    char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct adt7470_data *data = FUNC2(dev);

	if (FUNC0(data->fan_max[attr->index]))
		return FUNC3(buf, "%d\n",
			       FUNC1(data->fan_max[attr->index]));
	else
		return FUNC3(buf, "0\n");
}