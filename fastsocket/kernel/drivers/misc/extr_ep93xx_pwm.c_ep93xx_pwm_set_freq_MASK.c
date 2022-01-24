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
typedef  long u32 ;
struct platform_device {int dummy; } ;
struct ep93xx_pwm {long duty_percent; int /*<<< orphan*/  clk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 long EP93XX_PWM_MAX_COUNT ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_pwm*) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_pwm*) ; 
 int /*<<< orphan*/  FUNC3 (struct ep93xx_pwm*) ; 
 long FUNC4 (struct ep93xx_pwm*) ; 
 int /*<<< orphan*/  FUNC5 (struct ep93xx_pwm*,long) ; 
 int /*<<< orphan*/  FUNC6 (struct ep93xx_pwm*,long) ; 
 struct ep93xx_pwm* FUNC7 (struct platform_device*) ; 
 int FUNC8 (char const*,int,long*) ; 
 struct platform_device* FUNC9 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct platform_device *pdev = FUNC9(dev);
	struct ep93xx_pwm *pwm = FUNC7(pdev);
	long val;
	int err;

	err = FUNC8(buf, 10, &val);
	if (err)
		return -EINVAL;

	if (val == 0) {
		FUNC1(pwm);
	} else if (val <= (FUNC0(pwm->clk) / 2)) {
		u32 term, duty;

		val = (FUNC0(pwm->clk) / val) - 1;
		if (val > EP93XX_PWM_MAX_COUNT)
			val = EP93XX_PWM_MAX_COUNT;
		if (val < 1)
			val = 1;

		term = FUNC4(pwm);
		duty = ((val + 1) * pwm->duty_percent / 100) - 1;

		/* If pwm is running, order is important */
		if (val > term) {
			FUNC6(pwm, val);
			FUNC5(pwm, duty);
		} else {
			FUNC5(pwm, duty);
			FUNC6(pwm, val);
		}

		if (!FUNC3(pwm))
			FUNC2(pwm);
	} else {
		return -EINVAL;
	}

	return count;
}