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
struct s3c24xx_gpio_led {int /*<<< orphan*/  cdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s3c24xx_gpio_led*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s3c24xx_gpio_led* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct s3c24xx_gpio_led *led = FUNC2(dev);

	FUNC1(&led->cdev);
	FUNC0(led);

	return 0;
}