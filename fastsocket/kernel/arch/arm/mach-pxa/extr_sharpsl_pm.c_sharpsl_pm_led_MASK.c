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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int SHARPSL_LED_ERROR ; 
 int SHARPSL_LED_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sharpsl_charge_led_trigger ; 
 TYPE_1__ sharpsl_pm ; 

void FUNC3(int val)
{
	if (val == SHARPSL_LED_ERROR) {
		FUNC1(sharpsl_pm.dev, "Charging Error!\n");
	} else if (val == SHARPSL_LED_ON) {
		FUNC0(sharpsl_pm.dev, "Charge LED On\n");
		FUNC2(sharpsl_charge_led_trigger, LED_FULL);
	} else {
		FUNC0(sharpsl_pm.dev, "Charge LED Off\n");
		FUNC2(sharpsl_charge_led_trigger, LED_OFF);
	}
}