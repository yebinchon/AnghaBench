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
typedef  int u16 ;
struct platform_device {int dummy; } ;
struct ep93xx_pwm {int /*<<< orphan*/  clk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ep93xx_pwm*) ; 
 int FUNC2 (struct ep93xx_pwm*) ; 
 struct ep93xx_pwm* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 struct platform_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct platform_device *pdev = FUNC5(dev);
	struct ep93xx_pwm *pwm = FUNC3(pdev);

	if (FUNC1(pwm)) {
		unsigned long rate = FUNC0(pwm->clk);
		u16 term = FUNC2(pwm);

		return FUNC4(buf, "%ld\n", rate / (term + 1));
	} else {
		return FUNC4(buf, "disabled\n");
	}
}