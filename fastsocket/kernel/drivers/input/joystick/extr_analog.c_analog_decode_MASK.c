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
struct input_dev {int dummy; } ;
struct analog {int mask; int /*<<< orphan*/ * buttons; struct input_dev* dev; } ;

/* Variables and functions */
 int ANALOG_BTN_TL ; 
 int ANALOG_BTN_TL2 ; 
 int ANALOG_BTN_TR ; 
 int ANALOG_BTN_TR2 ; 
 int ANALOG_HAT_FCS ; 
 int ANALOG_HBTN_CHF ; 
 int /*<<< orphan*/ * analog_axes ; 
 int* analog_exts ; 
 int /*<<< orphan*/ * analog_hats ; 
 int /*<<< orphan*/ * analog_pads ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

__attribute__((used)) static void FUNC3(struct analog *analog, int *axes, int *initial, int buttons)
{
	struct input_dev *dev = analog->dev;
	int i, j;

	if (analog->mask & ANALOG_HAT_FCS)
		for (i = 0; i < 4; i++)
			if (axes[3] < ((initial[3] * ((i << 1) + 1)) >> 3)) {
				buttons |= 1 << (i + 14);
				break;
			}

	for (i = j = 0; i < 6; i++)
		if (analog->mask & (0x10 << i))
			FUNC1(dev, analog->buttons[j++], (buttons >> i) & 1);

	if (analog->mask & ANALOG_HBTN_CHF)
		for (i = 0; i < 4; i++)
			FUNC1(dev, analog->buttons[j++], (buttons >> (i + 10)) & 1);

	if (analog->mask & ANALOG_BTN_TL)
		FUNC1(dev, analog_pads[0], axes[2] < (initial[2] >> 1));
	if (analog->mask & ANALOG_BTN_TR)
		FUNC1(dev, analog_pads[1], axes[3] < (initial[3] >> 1));
	if (analog->mask & ANALOG_BTN_TL2)
		FUNC1(dev, analog_pads[2], axes[2] > (initial[2] + (initial[2] >> 1)));
	if (analog->mask & ANALOG_BTN_TR2)
		FUNC1(dev, analog_pads[3], axes[3] > (initial[3] + (initial[3] >> 1)));

	for (i = j = 0; i < 4; i++)
		if (analog->mask & (1 << i))
			FUNC0(dev, analog_axes[j++], axes[i]);

	for (i = j = 0; i < 3; i++)
		if (analog->mask & analog_exts[i]) {
			FUNC0(dev, analog_hats[j++],
				((buttons >> ((i << 2) + 7)) & 1) - ((buttons >> ((i << 2) + 9)) & 1));
			FUNC0(dev, analog_hats[j++],
				((buttons >> ((i << 2) + 8)) & 1) - ((buttons >> ((i << 2) + 6)) & 1));
		}

	FUNC2(dev);
}