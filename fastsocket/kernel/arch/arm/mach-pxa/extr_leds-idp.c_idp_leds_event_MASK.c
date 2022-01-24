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
 int IDP_BUSY_LED ; 
 int IDP_CPLD_LED_CONTROL ; 
 int IDP_HB_LED ; 
 int IDP_LEDS_MASK ; 
 int LED_STATE_CLAIMED ; 
 int LED_STATE_ENABLED ; 
 int hw_led_state ; 
#define  led_amber_off 141 
#define  led_amber_on 140 
#define  led_claim 139 
#define  led_green_off 138 
#define  led_green_on 137 
#define  led_halted 136 
#define  led_idle_end 135 
#define  led_idle_start 134 
#define  led_red_off 133 
#define  led_red_on 132 
#define  led_release 131 
#define  led_start 130 
 int led_state ; 
#define  led_stop 129 
#define  led_timer 128 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(led_event_t evt)
{
	unsigned long flags;

	FUNC1(flags);

	switch (evt) {
	case led_start:
		hw_led_state = IDP_HB_LED | IDP_BUSY_LED;
		led_state = LED_STATE_ENABLED;
		break;

	case led_stop:
		led_state &= ~LED_STATE_ENABLED;
		break;

	case led_claim:
		led_state |= LED_STATE_CLAIMED;
		hw_led_state = IDP_HB_LED | IDP_BUSY_LED;
		break;

	case led_release:
		led_state &= ~LED_STATE_CLAIMED;
		hw_led_state = IDP_HB_LED | IDP_BUSY_LED;
		break;

#ifdef CONFIG_LEDS_TIMER
	case led_timer:
		if (!(led_state & LED_STATE_CLAIMED))
			hw_led_state ^= IDP_HB_LED;
		break;
#endif

#ifdef CONFIG_LEDS_CPU
	case led_idle_start:
		if (!(led_state & LED_STATE_CLAIMED))
			hw_led_state &= ~IDP_BUSY_LED;
		break;

	case led_idle_end:
		if (!(led_state & LED_STATE_CLAIMED))
			hw_led_state |= IDP_BUSY_LED;
		break;
#endif

	case led_halted:
		break;

	case led_green_on:
		if (led_state & LED_STATE_CLAIMED)
			hw_led_state |= IDP_HB_LED;
		break;

	case led_green_off:
		if (led_state & LED_STATE_CLAIMED)
			hw_led_state &= ~IDP_HB_LED;
		break;

	case led_amber_on:
		break;

	case led_amber_off:
		break;

	case led_red_on:
		if (led_state & LED_STATE_CLAIMED)
			hw_led_state |= IDP_BUSY_LED;
		break;

	case led_red_off:
		if (led_state & LED_STATE_CLAIMED)
			hw_led_state &= ~IDP_BUSY_LED;
		break;

	default:
		break;
	}

	if  (led_state & LED_STATE_ENABLED)
		IDP_CPLD_LED_CONTROL = ( (IDP_CPLD_LED_CONTROL | IDP_LEDS_MASK) & ~hw_led_state);
	else
		IDP_CPLD_LED_CONTROL |= IDP_LEDS_MASK;

	FUNC0(flags);
}