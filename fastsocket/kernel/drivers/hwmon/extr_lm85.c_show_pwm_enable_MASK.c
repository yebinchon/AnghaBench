#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lm85_data {TYPE_1__* autofan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct lm85_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_2__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute
		*attr, char *buf)
{
	int nr = FUNC3(attr)->index;
	struct lm85_data *data = FUNC1(dev);
	int pwm_zone, enable;

	pwm_zone = FUNC0(data->autofan[nr].config);
	switch (pwm_zone) {
	case -1:	/* PWM is always at 100% */
		enable = 0;
		break;
	case 0:		/* PWM is always at 0% */
	case -2:	/* PWM responds to manual control */
		enable = 1;
		break;
	default:	/* PWM in automatic mode */
		enable = 2;
	}
	return FUNC2(buf, "%d\n", enable);
}