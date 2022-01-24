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
struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {int* alarms; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct abituguru_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 struct sensor_device_attribute_2* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute_2 *attr = FUNC2(devattr);
	struct abituguru_data *data = FUNC0(dev);
	if (!data)
		return -EIO;
	if (data->alarms[2] & (0x01 << attr->index))
		return FUNC1(buf, "1\n");
	else
		return FUNC1(buf, "0\n");
}