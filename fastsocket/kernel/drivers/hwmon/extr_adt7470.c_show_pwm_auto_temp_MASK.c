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
typedef  int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {int* pwm_auto_temp; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int ADT7470_PWM_ALL_TEMPS ; 
 struct adt7470_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				  struct device_attribute *devattr,
				  char *buf)
{
	struct sensor_device_attribute *attr = FUNC2(devattr);
	struct adt7470_data *data = FUNC0(dev);
	u8 ctrl = data->pwm_auto_temp[attr->index];

	if (ctrl)
		return FUNC1(buf, "%d\n", 1 << (ctrl - 1));
	else
		return FUNC1(buf, "%d\n", ADT7470_PWM_ALL_TEMPS);
}