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
typedef  int u8 ;

/* Variables and functions */
 int LEDEN_LEDAON ; 
 int LEDEN_LEDAPWM ; 
 int /*<<< orphan*/  TWL4030_LED_LEDEN ; 
 int /*<<< orphan*/  TWL4030_MODULE_LED ; 
 int cached_leden ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int led, int value)
{
	u8 mask = LEDEN_LEDAON | LEDEN_LEDAPWM;
	int status;

	if (led)
		mask <<= 1;

	FUNC0(&gpio_lock);
	if (value)
		cached_leden &= ~mask;
	else
		cached_leden |= mask;
	status = FUNC2(TWL4030_MODULE_LED, cached_leden,
			TWL4030_LED_LEDEN);
	FUNC1(&gpio_lock);
}