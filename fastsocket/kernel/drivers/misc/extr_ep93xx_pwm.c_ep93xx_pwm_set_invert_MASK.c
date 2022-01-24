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
struct platform_device {int dummy; } ;
struct ep93xx_pwm {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_pwm*) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_pwm*) ; 
 struct ep93xx_pwm* FUNC2 (struct platform_device*) ; 
 int FUNC3 (char const*,int,long*) ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct platform_device *pdev = FUNC4(dev);
	struct ep93xx_pwm *pwm = FUNC2(pdev);
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return -EINVAL;

	if (val == 0)
		FUNC1(pwm);
	else if (val == 1)
		FUNC0(pwm);
	else
		return -EINVAL;

	return count;
}