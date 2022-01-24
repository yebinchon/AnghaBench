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
struct s3c24xx_led_platdata {int flags; int /*<<< orphan*/  gpio; } ;
struct s3c24xx_gpio_led {struct s3c24xx_led_platdata* pdata; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_GPIO_INPUT ; 
 int /*<<< orphan*/  S3C2410_GPIO_OUTPUT ; 
 int S3C24XX_LEDF_ACTLOW ; 
 int S3C24XX_LEDF_TRISTATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct s3c24xx_gpio_led* FUNC2 (struct led_classdev*) ; 

__attribute__((used)) static void FUNC3(struct led_classdev *led_cdev,
			    enum led_brightness value)
{
	struct s3c24xx_gpio_led *led = FUNC2(led_cdev);
	struct s3c24xx_led_platdata *pd = led->pdata;

	/* there will be a short delay between setting the output and
	 * going from output to input when using tristate. */

	FUNC1(pd->gpio, (value ? 1 : 0) ^
			    (pd->flags & S3C24XX_LEDF_ACTLOW));

	if (pd->flags & S3C24XX_LEDF_TRISTATE)
		FUNC0(pd->gpio,
			value ? S3C2410_GPIO_OUTPUT : S3C2410_GPIO_INPUT);

}