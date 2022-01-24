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
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct led_timer {int /*<<< orphan*/  list; TYPE_1__ blink_timer; struct led_classdev* cdev; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct led_timer* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led_lock ; 
 int /*<<< orphan*/  led_timer_function ; 
 int /*<<< orphan*/  led_timers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct led_timer *FUNC5(struct led_classdev *led_cdev)
{
	struct led_timer *led;
	unsigned long flags;

	led = FUNC1(sizeof(struct led_timer), GFP_ATOMIC);
	if (!led)
		return NULL;

	led->cdev = led_cdev;
	FUNC0(&led->blink_timer);
	led->blink_timer.function = led_timer_function;
	led->blink_timer.data = (unsigned long) led;

	FUNC3(&led_lock, flags);
	FUNC2(&led->list, &led_timers);
	FUNC4(&led_lock, flags);

	return led;
}