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

/* Variables and functions */
 int /*<<< orphan*/  GTA02_GPIO_AUX_LED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static long FUNC1(long count)
{
	long delay = 0;
	static long last_blink;
	static char led;

	/* Fast blink: 200ms period. */
	if (count - last_blink < 100)
		return 0;

	led ^= 1;
	FUNC0(GTA02_GPIO_AUX_LED, led);

	last_blink = count;

	return delay;
}