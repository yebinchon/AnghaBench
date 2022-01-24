#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct gpio_led {int /*<<< orphan*/  gpio; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  evm_led_data ; 
 TYPE_2__* evm_led_dev ; 
 struct gpio_led* evm_leds ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
{
	struct gpio_led *leds = evm_leds;
	int status;

	while (ngpio--) {
		leds->gpio = gpio++;
		leds++;
	}

	/* what an extremely annoying way to be forced to handle
	 * device unregistration ...
	 */
	evm_led_dev = FUNC2("leds-gpio", 0);
	FUNC1(evm_led_dev,
			&evm_led_data, sizeof evm_led_data);

	evm_led_dev->dev.parent = &client->dev;
	status = FUNC0(evm_led_dev);
	if (status < 0) {
		FUNC3(evm_led_dev);
		evm_led_dev = NULL;
	}
	return status;
}