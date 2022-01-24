#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* default_trigger; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  name; } ;
struct ath5k_led {struct ath5k_hw* ah; TYPE_1__ led_dev; int /*<<< orphan*/  name; } ;
struct ath5k_hw {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,char*,char const*) ; 
 int /*<<< orphan*/  ath5k_led_brightness_set ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC3(struct ath5k_hw *ah, struct ath5k_led *led,
		   const char *name, char *trigger)
{
	int err;

	led->ah = ah;
	FUNC2(led->name, name, sizeof(led->name));
	led->led_dev.name = led->name;
	led->led_dev.default_trigger = trigger;
	led->led_dev.brightness_set = ath5k_led_brightness_set;

	err = FUNC1(ah->dev, &led->led_dev);
	if (err) {
		FUNC0(ah, "could not register LED %s\n", name);
		led->ah = NULL;
	}
	return err;
}