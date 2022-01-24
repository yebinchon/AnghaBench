#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s3c24xx_led_platdata {int flags; int /*<<< orphan*/  gpio; int /*<<< orphan*/  name; int /*<<< orphan*/  def_trigger; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  brightness_set; } ;
struct s3c24xx_gpio_led {TYPE_2__ cdev; struct s3c24xx_led_platdata* pdata; } ;
struct TYPE_4__ {struct s3c24xx_led_platdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 int /*<<< orphan*/  S3C2410_GPIO_INPUT ; 
 int /*<<< orphan*/  S3C2410_GPIO_OUTPUT ; 
 int S3C24XX_LEDF_TRISTATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c24xx_gpio_led*) ; 
 struct s3c24xx_gpio_led* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct s3c24xx_gpio_led*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c24xx_led_set ; 

__attribute__((used)) static int FUNC8(struct platform_device *dev)
{
	struct s3c24xx_led_platdata *pdata = dev->dev.platform_data;
	struct s3c24xx_gpio_led *led;
	int ret;

	led = FUNC2(sizeof(struct s3c24xx_gpio_led), GFP_KERNEL);
	if (led == NULL) {
		FUNC0(&dev->dev, "No memory for device\n");
		return -ENOMEM;
	}

	FUNC4(dev, led);

	led->cdev.brightness_set = s3c24xx_led_set;
	led->cdev.default_trigger = pdata->def_trigger;
	led->cdev.name = pdata->name;
	led->cdev.flags |= LED_CORE_SUSPENDRESUME;

	led->pdata = pdata;

	/* no point in having a pull-up if we are always driving */

	if (pdata->flags & S3C24XX_LEDF_TRISTATE) {
		FUNC7(pdata->gpio, 0);
		FUNC5(pdata->gpio, S3C2410_GPIO_INPUT);
	} else {
		FUNC6(pdata->gpio, 0);
		FUNC7(pdata->gpio, 0);
		FUNC5(pdata->gpio, S3C2410_GPIO_OUTPUT);
	}

	/* register our new led device */

	ret = FUNC3(&dev->dev, &led->cdev);
	if (ret < 0) {
		FUNC0(&dev->dev, "led_classdev_register failed\n");
		FUNC1(led);
		return ret;
	}

	return 0;
}