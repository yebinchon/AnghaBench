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
struct gpio_private {int minor; } ;

/* Variables and functions */
 int EINVAL ; 
 int GPIO_MINOR_PWM0 ; 
#define  IO_PWM_SET_DUTY 130 
#define  IO_PWM_SET_MODE 129 
#define  IO_PWM_SET_PERIOD 128 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned long,int) ; 
 int FUNC2 (unsigned long,int) ; 
 int FUNC3 (unsigned long,int) ; 

__attribute__((used)) static int FUNC4(struct gpio_private *priv, unsigned int cmd,
	unsigned long arg)
{
	int pwm_port = priv->minor - GPIO_MINOR_PWM0;

	switch (FUNC0(cmd)) {
	case IO_PWM_SET_MODE:
		return FUNC2(arg, pwm_port);
	case IO_PWM_SET_PERIOD:
		return FUNC3(arg, pwm_port);
	case IO_PWM_SET_DUTY:
		return FUNC1(arg, pwm_port);
	default:
		return -EINVAL;
	}
	return 0;
}