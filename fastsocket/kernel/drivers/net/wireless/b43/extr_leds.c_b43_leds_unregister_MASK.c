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
struct b43_leds {int /*<<< orphan*/  led_radio; int /*<<< orphan*/  led_assoc; int /*<<< orphan*/  led_rx; int /*<<< orphan*/  led_tx; } ;
struct b43_wl {struct b43_leds leds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct b43_wl *wl)
{
	struct b43_leds *leds = &wl->leds;

	FUNC0(&leds->led_tx);
	FUNC0(&leds->led_rx);
	FUNC0(&leds->led_assoc);
	FUNC0(&leds->led_radio);
}