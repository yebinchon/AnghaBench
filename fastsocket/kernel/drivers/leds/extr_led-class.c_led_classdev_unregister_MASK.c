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
struct led_timer {int /*<<< orphan*/  list; int /*<<< orphan*/  blink_timer; } ;
struct led_classdev {int /*<<< orphan*/  node; int /*<<< orphan*/  dev; int /*<<< orphan*/  trigger_lock; scalar_t__ trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_brightness ; 
 int /*<<< orphan*/  dev_attr_max_brightness ; 
 int /*<<< orphan*/  dev_attr_trigger ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct led_timer*) ; 
 struct led_timer* FUNC5 (struct led_classdev*) ; 
 int /*<<< orphan*/  led_lock ; 
 int /*<<< orphan*/  FUNC6 (struct led_classdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  leds_list_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct led_classdev *led_cdev)
{
	struct led_timer *led = FUNC5(led_cdev);
	unsigned long flags;

	if (led) {
		FUNC0(&led->blink_timer);
		FUNC8(&led_lock, flags);
		FUNC7(&led->list);
		FUNC9(&led_lock, flags);
		FUNC4(led);
	}

	FUNC1(led_cdev->dev, &dev_attr_max_brightness);
	FUNC1(led_cdev->dev, &dev_attr_brightness);
#ifdef CONFIG_LEDS_TRIGGERS
	device_remove_file(led_cdev->dev, &dev_attr_trigger);
	down_write(&led_cdev->trigger_lock);
	if (led_cdev->trigger)
		led_trigger_set(led_cdev, NULL);
	up_write(&led_cdev->trigger_lock);
#endif

	FUNC2(led_cdev->dev);

	FUNC3(&leds_list_lock);
	FUNC7(&led_cdev->node);
	FUNC10(&leds_list_lock);
}