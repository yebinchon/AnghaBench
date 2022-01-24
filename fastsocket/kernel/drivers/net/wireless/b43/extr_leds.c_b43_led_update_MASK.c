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
struct TYPE_2__ {scalar_t__ radio_on; } ;
struct b43_wldev {scalar_t__ radio_hw_enable; TYPE_1__ phy; } ;
struct b43_led {int hw_state; int /*<<< orphan*/  activelow; int /*<<< orphan*/  index; int /*<<< orphan*/  state; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 scalar_t__ LED_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev,
			   struct b43_led *led)
{
	bool radio_enabled;
	bool turn_on;

	if (!led->wl)
		return;

	radio_enabled = (dev->phy.radio_on && dev->radio_hw_enable);

	/* The led->state read is racy, but we don't care. In case we raced
	 * with the brightness_set handler, we will be called again soon
	 * to fixup our state. */
	if (radio_enabled)
		turn_on = FUNC0(&led->state) != LED_OFF;
	else
		turn_on = false;
	if (turn_on == led->hw_state)
		return;
	led->hw_state = turn_on;

	if (turn_on)
		FUNC2(dev, led->index, led->activelow);
	else
		FUNC1(dev, led->index, led->activelow);
}