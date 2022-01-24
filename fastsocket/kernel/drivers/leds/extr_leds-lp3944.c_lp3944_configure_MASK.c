#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lp3944_platform_data {int leds_size; struct lp3944_led* leds; } ;
struct TYPE_3__ {int max_brightness; int /*<<< orphan*/  name; int /*<<< orphan*/  brightness; int /*<<< orphan*/  flags; int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; } ;
struct lp3944_led_data {int id; int type; int /*<<< orphan*/  work; TYPE_1__ ldev; int /*<<< orphan*/  status; struct i2c_client* client; } ;
struct lp3944_led {int type; int /*<<< orphan*/  name; int /*<<< orphan*/  status; } ;
struct lp3944_data {struct lp3944_led_data* leds; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
#define  LP3944_LED_TYPE_LED 130 
#define  LP3944_LED_TYPE_LED_INVERTED 129 
#define  LP3944_LED_TYPE_NONE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct lp3944_led_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lp3944_led_set_blink ; 
 int /*<<< orphan*/  lp3944_led_set_brightness ; 
 int /*<<< orphan*/  lp3944_led_work ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			    struct lp3944_data *data,
			    struct lp3944_platform_data *pdata)
{
	int i, err = 0;

	for (i = 0; i < pdata->leds_size; i++) {
		struct lp3944_led *pled = &pdata->leds[i];
		struct lp3944_led_data *led = &data->leds[i];
		led->client = client;
		led->id = i;

		switch (pled->type) {

		case LP3944_LED_TYPE_LED:
		case LP3944_LED_TYPE_LED_INVERTED:
			led->type = pled->type;
			led->status = pled->status;
			led->ldev.name = pled->name;
			led->ldev.max_brightness = 1;
			led->ldev.brightness_set = lp3944_led_set_brightness;
			led->ldev.blink_set = lp3944_led_set_blink;
			led->ldev.flags = LED_CORE_SUSPENDRESUME;

			FUNC0(&led->work, lp3944_led_work);
			err = FUNC3(&client->dev, &led->ldev);
			if (err < 0) {
				FUNC2(&client->dev,
					"couldn't register LED %s\n",
					led->ldev.name);
				goto exit;
			}

			/* to expose the default value to userspace */
			led->ldev.brightness = led->status;

			/* Set the default led status */
			err = FUNC5(led, led->status);
			if (err < 0) {
				FUNC2(&client->dev,
					"%s couldn't set STATUS %d\n",
					led->ldev.name, led->status);
				goto exit;
			}
			break;

		case LP3944_LED_TYPE_NONE:
		default:
			break;

		}
	}
	return 0;

exit:
	if (i > 0)
		for (i = i - 1; i >= 0; i--)
			switch (pdata->leds[i].type) {

			case LP3944_LED_TYPE_LED:
			case LP3944_LED_TYPE_LED_INVERTED:
				FUNC4(&data->leds[i].ldev);
				FUNC1(&data->leds[i].work);
				break;

			case LP3944_LED_TYPE_NONE:
			default:
				break;
			}

	return err;
}