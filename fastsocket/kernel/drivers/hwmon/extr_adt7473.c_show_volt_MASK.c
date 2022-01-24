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
struct adt7473_data {int /*<<< orphan*/ * volt; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct adt7473_data* FUNC0 (struct device*) ; 
 int FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *devattr,
			 char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(devattr);
	struct adt7473_data *data = FUNC0(dev);

	return FUNC2(buf, "%d\n",
		       FUNC1(attr->index, data->volt[attr->index]));
}