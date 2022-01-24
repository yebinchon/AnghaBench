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
struct pxa27x_keypad {int* rotary_rel_code; unsigned char* keycodes; struct input_dev* input_dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int MAX_MATRIX_KEY_NUM ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct pxa27x_keypad *keypad, int r, int delta)
{
	struct input_dev *dev = keypad->input_dev;

	if (delta == 0)
		return;

	if (keypad->rotary_rel_code[r] == -1) {
		int code = MAX_MATRIX_KEY_NUM + 2 * r + (delta > 0 ? 0 : 1);
		unsigned char keycode = keypad->keycodes[code];

		/* simulate a press-n-release */
		FUNC0(dev, EV_MSC, MSC_SCAN, code);
		FUNC1(dev, keycode, 1);
		FUNC3(dev);
		FUNC0(dev, EV_MSC, MSC_SCAN, code);
		FUNC1(dev, keycode, 0);
		FUNC3(dev);
	} else {
		FUNC2(dev, keypad->rotary_rel_code[r], delta);
		FUNC3(dev);
	}
}