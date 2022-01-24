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
struct adt7473_data {int* pwm_behavior; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int ADT7473_PWM_BHVR_SHIFT ; 
 struct adt7473_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			       struct device_attribute *devattr,
			       char *buf)
{
	struct sensor_device_attribute *attr = FUNC2(devattr);
	struct adt7473_data *data = FUNC0(dev);

	switch (data->pwm_behavior[attr->index] >> ADT7473_PWM_BHVR_SHIFT) {
	case 3:
		return FUNC1(buf, "0\n");
	case 7:
		return FUNC1(buf, "1\n");
	default:
		return FUNC1(buf, "2\n");
	}
}