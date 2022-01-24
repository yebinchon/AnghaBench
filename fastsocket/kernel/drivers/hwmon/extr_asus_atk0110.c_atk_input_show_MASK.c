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
typedef  int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atk_sensor_data {scalar_t__ type; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ HWMON_TYPE_TEMP ; 
 int FUNC0 (struct atk_sensor_data*,int*) ; 
 struct atk_sensor_data* FUNC1 (struct device_attribute*) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct atk_sensor_data *s = FUNC1(attr);
	u64 value;
	int err;

	err = FUNC0(s, &value);
	if (err)
		return err;

	if (s->type == HWMON_TYPE_TEMP)
		/* ACPI returns decidegree */
		value *= 100;

	return FUNC2(buf, "%llu\n", value);
}