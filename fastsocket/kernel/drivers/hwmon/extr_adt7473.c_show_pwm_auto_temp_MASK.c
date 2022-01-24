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
 int /*<<< orphan*/  FUNC0 () ; 
 struct adt7473_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				  struct device_attribute *devattr,
				  char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(devattr);
	struct adt7473_data *data = FUNC1(dev);
	int bhvr = data->pwm_behavior[attr->index] >> ADT7473_PWM_BHVR_SHIFT;

	switch (bhvr) {
	case 3:
	case 4:
	case 7:
		return FUNC2(buf, "0\n");
	case 0:
	case 1:
	case 5:
	case 6:
		return FUNC2(buf, "%d\n", bhvr + 1);
	case 2:
		return FUNC2(buf, "4\n");
	}
	/* shouldn't ever get here */
	FUNC0();
}