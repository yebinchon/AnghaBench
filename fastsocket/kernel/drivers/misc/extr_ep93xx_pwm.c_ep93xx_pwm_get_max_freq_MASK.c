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
struct ep93xx_pwm {int /*<<< orphan*/  clk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 struct ep93xx_pwm* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct platform_device *pdev = FUNC3(dev);
	struct ep93xx_pwm *pwm = FUNC1(pdev);
	unsigned long rate = FUNC0(pwm->clk);

	return FUNC2(buf, "%ld\n", rate / 2);
}