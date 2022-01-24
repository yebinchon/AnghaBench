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
struct vt1211_data {int* pwm; int* pwm_ctl; int pwm_clk; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  SHOW_PWM 131 
#define  SHOW_SET_PWM_AUTO_CHANNELS_TEMP 130 
#define  SHOW_SET_PWM_ENABLE 129 
#define  SHOW_SET_PWM_FREQ 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC2 (struct device_attribute*) ; 
 struct vt1211_data* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	struct vt1211_data *data = FUNC3(dev);
	struct sensor_device_attribute_2 *sensor_attr_2 =
						FUNC2(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	int res;

	switch (fn) {
	case SHOW_PWM:
		res = data->pwm[ix];
		break;
	case SHOW_SET_PWM_ENABLE:
		res = ((data->pwm_ctl[ix] >> 3) & 1) ? 2 : 0;
		break;
	case SHOW_SET_PWM_FREQ:
		res = 90000 >> (data->pwm_clk & 7);
		break;
	case SHOW_SET_PWM_AUTO_CHANNELS_TEMP:
		res = (data->pwm_ctl[ix] & 7) + 1;
		break;
	default:
		res = 0;
		FUNC0(dev, "Unknown attr fetch (%d)\n", fn);
	}

	return FUNC1(buf, "%d\n", res);
}