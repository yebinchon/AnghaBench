#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct led_pwm_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct led_pwm_platform_data {int num_leds; struct led_pwm* leds; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  brightness; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct led_pwm_data {int /*<<< orphan*/  pwm; TYPE_1__ cdev; int /*<<< orphan*/  period; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  active_low; } ;
struct led_pwm {int /*<<< orphan*/  pwm_period_ns; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  active_low; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; int /*<<< orphan*/  pwm_id; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct led_pwm_data*) ; 
 struct led_pwm_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  led_pwm_set ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct led_pwm_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct led_pwm_platform_data *pdata = pdev->dev.platform_data;
	struct led_pwm *cur_led;
	struct led_pwm_data *leds_data, *led_dat;
	int i, ret = 0;

	if (!pdata)
		return -EBUSY;

	leds_data = FUNC3(sizeof(struct led_pwm_data) * pdata->num_leds,
				GFP_KERNEL);
	if (!leds_data)
		return -ENOMEM;

	for (i = 0; i < pdata->num_leds; i++) {
		cur_led = &pdata->leds[i];
		led_dat = &leds_data[i];

		led_dat->pwm = FUNC8(cur_led->pwm_id,
				cur_led->name);
		if (FUNC0(led_dat->pwm)) {
			FUNC1(&pdev->dev, "unable to request PWM %d\n",
					cur_led->pwm_id);
			goto err;
		}

		led_dat->cdev.name = cur_led->name;
		led_dat->cdev.default_trigger = cur_led->default_trigger;
		led_dat->active_low = cur_led->active_low;
		led_dat->max_brightness = cur_led->max_brightness;
		led_dat->period = cur_led->pwm_period_ns;
		led_dat->cdev.brightness_set = led_pwm_set;
		led_dat->cdev.brightness = LED_OFF;
		led_dat->cdev.flags |= LED_CORE_SUSPENDRESUME;

		ret = FUNC4(&pdev->dev, &led_dat->cdev);
		if (ret < 0) {
			FUNC7(led_dat->pwm);
			goto err;
		}
	}

	FUNC6(pdev, leds_data);

	return 0;

err:
	if (i > 0) {
		for (i = i - 1; i >= 0; i--) {
			FUNC5(&leds_data[i].cdev);
			FUNC7(leds_data[i].pwm);
		}
	}

	FUNC2(leds_data);

	return ret;
}