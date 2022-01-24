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
struct input_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_NUML ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 int /*<<< orphan*/  SYN_REPORT ; 
 int /*<<< orphan*/  FUNC0 (struct input_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  keyboard_tasklet ; 
 unsigned char ledstate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct input_handle *handle)
{
	unsigned char leds = ledstate;

	FUNC1(&keyboard_tasklet);
	if (leds != 0xff) {
		FUNC0(handle, EV_LED, LED_SCROLLL, !!(leds & 0x01));
		FUNC0(handle, EV_LED, LED_NUML,    !!(leds & 0x02));
		FUNC0(handle, EV_LED, LED_CAPSL,   !!(leds & 0x04));
		FUNC0(handle, EV_SYN, SYN_REPORT, 0);
	}
	FUNC2(&keyboard_tasklet);
}