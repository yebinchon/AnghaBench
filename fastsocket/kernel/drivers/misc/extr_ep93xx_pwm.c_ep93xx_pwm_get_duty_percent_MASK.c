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
struct ep93xx_pwm {int duty_percent; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct ep93xx_pwm* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct platform_device *pdev = FUNC2(dev);
	struct ep93xx_pwm *pwm = FUNC0(pdev);

	return FUNC1(buf, "%d\n", pwm->duty_percent);
}