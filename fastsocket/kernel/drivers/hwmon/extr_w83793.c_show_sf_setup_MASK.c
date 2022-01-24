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
typedef  int u32 ;
struct w83793_data {int pwm_default; int temp_critical; int /*<<< orphan*/  pwm_downtime; int /*<<< orphan*/  pwm_uptime; } ;
struct sensor_device_attribute_2 {int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int SETUP_PWM_DEFAULT ; 
 int SETUP_PWM_DOWNTIME ; 
 int SETUP_PWM_UPTIME ; 
 int SETUP_TEMP_CRITICAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 
 struct w83793_data* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC3(attr);
	int nr = sensor_attr->nr;
	struct w83793_data *data = FUNC4(dev);
	u32 val = 0;

	if (SETUP_PWM_DEFAULT == nr) {
		val = (data->pwm_default & 0x3f) << 2;
	} else if (SETUP_PWM_UPTIME == nr) {
		val = FUNC1(data->pwm_uptime);
	} else if (SETUP_PWM_DOWNTIME == nr) {
		val = FUNC1(data->pwm_downtime);
	} else if (SETUP_TEMP_CRITICAL == nr) {
		val = FUNC0(data->temp_critical & 0x7f);
	}

	return FUNC2(buf, "%d\n", val);
}