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
struct gpio_desc {unsigned long config; unsigned long mux_mask; unsigned long mask; scalar_t__ can_wakeup; scalar_t__ keypad_gpio; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned long MFP_LPM_CAN_WAKEUP ; 
 unsigned long MFP_LPM_EDGE_FALL ; 
 unsigned long MFP_LPM_EDGE_RISE ; 
 int /*<<< orphan*/  MFP_PIN_GPIO127 ; 
 unsigned long PFER ; 
 unsigned long PRER ; 
 unsigned long PWER ; 
 struct gpio_desc* gpio_desc ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(unsigned int gpio, unsigned int on)
{
	struct gpio_desc *d;
	unsigned long c, mux_taken;

	if (gpio > FUNC0(MFP_PIN_GPIO127))
		return -EINVAL;

	d = &gpio_desc[gpio];
	c = d->config;

	if (!d->valid)
		return -EINVAL;

	if (d->keypad_gpio)
		return -EINVAL;

	mux_taken = (PWER & d->mux_mask) & (~d->mask);
	if (on && mux_taken)
		return -EBUSY;

	if (d->can_wakeup && (c & MFP_LPM_CAN_WAKEUP)) {
		if (on) {
			PWER = (PWER & ~d->mux_mask) | d->mask;

			if (c & MFP_LPM_EDGE_RISE)
				PRER |= d->mask;
			else
				PRER &= ~d->mask;

			if (c & MFP_LPM_EDGE_FALL)
				PFER |= d->mask;
			else
				PFER &= ~d->mask;
		} else {
			PWER &= ~d->mask;
			PRER &= ~d->mask;
			PFER &= ~d->mask;
		}
	}
	return 0;
}