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
typedef  int u32 ;
typedef  int u16 ;
struct input_dev {int keycodemax; int keycodesize; int /*<<< orphan*/  keybit; scalar_t__ keycode; } ;
typedef  int /*<<< orphan*/  keycode ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev,
				    int scancode, int keycode)
{
	int old_keycode;
	int i;

	if (scancode >= dev->keycodemax)
		return -EINVAL;

	if (!dev->keycodesize)
		return -EINVAL;

	if (dev->keycodesize < sizeof(keycode) && (keycode >> (dev->keycodesize * 8)))
		return -EINVAL;

	switch (dev->keycodesize) {
		case 1: {
			u8 *k = (u8 *)dev->keycode;
			old_keycode = k[scancode];
			k[scancode] = keycode;
			break;
		}
		case 2: {
			u16 *k = (u16 *)dev->keycode;
			old_keycode = k[scancode];
			k[scancode] = keycode;
			break;
		}
		default: {
			u32 *k = (u32 *)dev->keycode;
			old_keycode = k[scancode];
			k[scancode] = keycode;
			break;
		}
	}

	FUNC0(old_keycode, dev->keybit);
	FUNC2(keycode, dev->keybit);

	for (i = 0; i < dev->keycodemax; i++) {
		if (FUNC1(dev, i) == old_keycode) {
			FUNC2(old_keycode, dev->keybit);
			break; /* Setting the bit twice is useless, so break */
		}
	}

	return 0;
}