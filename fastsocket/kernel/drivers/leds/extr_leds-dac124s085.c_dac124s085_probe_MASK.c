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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int max_brightness; int /*<<< orphan*/  brightness_set; void* brightness; int /*<<< orphan*/  name; } ;
struct dac124s085_led {int id; TYPE_1__ ldev; int /*<<< orphan*/  name; int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; struct spi_device* spi; void* brightness; } ;
struct dac124s085 {struct dac124s085_led* leds; } ;

/* Variables and functions */
 int FUNC0 (struct dac124s085_led*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* LED_OFF ; 
 int /*<<< orphan*/  dac124s085_led_work ; 
 int /*<<< orphan*/  dac124s085_set_brightness ; 
 int /*<<< orphan*/  FUNC2 (struct dac124s085*) ; 
 struct dac124s085* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct dac124s085*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct dac124s085	*dac;
	struct dac124s085_led	*led;
	int i, ret;

	dac = FUNC3(sizeof(*dac), GFP_KERNEL);
	if (!dac)
		return -ENOMEM;

	spi->bits_per_word = 16;

	for (i = 0; i < FUNC0(dac->leds); i++) {
		led		= dac->leds + i;
		led->id		= i;
		led->brightness	= LED_OFF;
		led->spi	= spi;
		FUNC7(led->name, sizeof(led->name), "dac124s085-%d", i);
		FUNC9(&led->lock);
		FUNC1(&led->work, dac124s085_led_work);
		FUNC6(&led->mutex);
		led->ldev.name = led->name;
		led->ldev.brightness = LED_OFF;
		led->ldev.max_brightness = 0xfff;
		led->ldev.brightness_set = dac124s085_set_brightness;
		ret = FUNC4(&spi->dev, &led->ldev);
		if (ret < 0)
			goto eledcr;
	}

	FUNC8(spi, dac);

	return 0;

eledcr:
	while (i--)
		FUNC5(&dac->leds[i].ldev);

	FUNC8(spi, NULL);
	FUNC2(dac);
	return ret;
}