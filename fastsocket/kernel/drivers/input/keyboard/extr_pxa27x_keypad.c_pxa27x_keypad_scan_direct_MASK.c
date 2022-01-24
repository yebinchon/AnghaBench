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
typedef  int uint32_t ;
struct pxa27x_keypad_platform_data {int direct_key_num; scalar_t__ enable_rotary1; scalar_t__ enable_rotary0; } ;
struct pxa27x_keypad {unsigned int direct_key_mask; unsigned int direct_key_state; int /*<<< orphan*/ * keycodes; struct input_dev* input_dev; struct pxa27x_keypad_platform_data* pdata; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  KPDK ; 
 unsigned int FUNC0 (int) ; 
 int MAX_MATRIX_KEY_NUM ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa27x_keypad*) ; 

__attribute__((used)) static void FUNC6(struct pxa27x_keypad *keypad)
{
	struct pxa27x_keypad_platform_data *pdata = keypad->pdata;
	struct input_dev *input_dev = keypad->input_dev;
	unsigned int new_state;
	uint32_t kpdk, bits_changed;
	int i;

	kpdk = FUNC4(KPDK);

	if (pdata->enable_rotary0 || pdata->enable_rotary1)
		FUNC5(keypad);

	new_state = FUNC0(kpdk) & keypad->direct_key_mask;
	bits_changed = keypad->direct_key_state ^ new_state;

	if (bits_changed == 0)
		return;

	for (i = 0; i < pdata->direct_key_num; i++) {
		if (bits_changed & (1 << i)) {
			int code = MAX_MATRIX_KEY_NUM + i;

			FUNC1(input_dev, EV_MSC, MSC_SCAN, code);
			FUNC2(input_dev, keypad->keycodes[code],
					 new_state & (1 << i));
		}
	}
	FUNC3(input_dev);
	keypad->direct_key_state = new_state;
}