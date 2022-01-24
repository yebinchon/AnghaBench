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
typedef  int led_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ks8695_leds_cpu ; 
 int /*<<< orphan*/  ks8695_leds_timer ; 
#define  led_idle_end 132 
#define  led_idle_start 131 
#define  led_start 130 
#define  led_stop 129 
#define  led_timer 128 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(led_event_t evt)
{
	unsigned long flags;

	FUNC4(flags);

	switch(evt) {
	case led_start:		/* System startup */
		FUNC1(ks8695_leds_cpu);
		break;

	case led_stop:		/* System stop / suspend */
		FUNC0(ks8695_leds_cpu);
		break;

#ifdef CONFIG_LEDS_TIMER
	case led_timer:		/* Every 50 timer ticks */
		ks8695_led_toggle(ks8695_leds_timer);
		break;
#endif

#ifdef CONFIG_LEDS_CPU
	case led_idle_start:	/* Entering idle state */
		ks8695_led_off(ks8695_leds_cpu);
		break;

	case led_idle_end:	/* Exit idle state */
		ks8695_led_on(ks8695_leds_cpu);
		break;
#endif

	default:
		break;
	}

	FUNC3(flags);
}