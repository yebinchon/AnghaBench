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
 int /*<<< orphan*/  CM_CTRL_LED ; 
 int /*<<< orphan*/  GREEN_LED ; 
 scalar_t__ INTEGRATOR_DBG_ALPHA_OFFSET ; 
 int /*<<< orphan*/  INTEGRATOR_DBG_BASE ; 
 scalar_t__ INTEGRATOR_DBG_LEDS_OFFSET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RED_LED ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  led_idle_end 132 
#define  led_idle_start 131 
#define  led_red_off 130 
#define  led_red_on 129 
#define  led_timer 128 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  saved_leds ; 

__attribute__((used)) static void FUNC6(led_event_t ledevt)
{
	unsigned long flags;
	const unsigned int dbg_base = FUNC0(INTEGRATOR_DBG_BASE);
	unsigned int update_alpha_leds;

	// yup, change the LEDs
	FUNC5(flags);
	update_alpha_leds = 0;

	switch(ledevt) {
	case led_idle_start:
		FUNC3(CM_CTRL_LED, 0);
		break;

	case led_idle_end:
		FUNC3(CM_CTRL_LED, CM_CTRL_LED);
		break;

	case led_timer:
		saved_leds ^= GREEN_LED;
		update_alpha_leds = 1;
		break;

	case led_red_on:
		saved_leds |= RED_LED;
		update_alpha_leds = 1;
		break;

	case led_red_off:
		saved_leds &= ~RED_LED;
		update_alpha_leds = 1;
		break;

	default:
		break;
	}

	if (update_alpha_leds) {
		while (FUNC1(dbg_base + INTEGRATOR_DBG_ALPHA_OFFSET) & 1);
		FUNC2(saved_leds, dbg_base + INTEGRATOR_DBG_LEDS_OFFSET);
	}
	FUNC4(flags);
}