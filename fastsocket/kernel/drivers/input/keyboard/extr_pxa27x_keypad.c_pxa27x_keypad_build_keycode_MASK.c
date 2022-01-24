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
struct pxa27x_keypad_platform_data {int matrix_key_map_size; unsigned int* matrix_key_map; int direct_key_num; unsigned short* direct_key_map; unsigned short rotary0_up_key; unsigned short rotary0_down_key; int rotary0_rel_code; unsigned short rotary1_up_key; unsigned short rotary1_down_key; int rotary1_rel_code; scalar_t__ enable_rotary1; scalar_t__ enable_rotary0; } ;
struct pxa27x_keypad {unsigned short* keycodes; int* rotary_rel_code; struct input_dev* input_dev; struct pxa27x_keypad_platform_data* pdata; } ;
struct input_dev {int /*<<< orphan*/  keybit; int /*<<< orphan*/  relbit; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned short FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  MATRIX_ROW_SHIFT ; 
 unsigned int FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int MAX_MATRIX_KEY_NUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pxa27x_keypad *keypad)
{
	struct pxa27x_keypad_platform_data *pdata = keypad->pdata;
	struct input_dev *input_dev = keypad->input_dev;
	unsigned short keycode;
	int i;

	for (i = 0; i < pdata->matrix_key_map_size; i++) {
		unsigned int key = pdata->matrix_key_map[i];
		unsigned int row = FUNC1(key);
		unsigned int col = FUNC0(key);
		unsigned int scancode = FUNC3(row, col,
							 MATRIX_ROW_SHIFT);

		keycode = FUNC2(key);
		keypad->keycodes[scancode] = keycode;
		FUNC5(keycode, input_dev->keybit);
	}

	for (i = 0; i < pdata->direct_key_num; i++) {
		keycode = pdata->direct_key_map[i];
		keypad->keycodes[MAX_MATRIX_KEY_NUM + i] = keycode;
		FUNC5(keycode, input_dev->keybit);
	}

	if (pdata->enable_rotary0) {
		if (pdata->rotary0_up_key && pdata->rotary0_down_key) {
			keycode = pdata->rotary0_up_key;
			keypad->keycodes[MAX_MATRIX_KEY_NUM + 0] = keycode;
			FUNC5(keycode, input_dev->keybit);

			keycode = pdata->rotary0_down_key;
			keypad->keycodes[MAX_MATRIX_KEY_NUM + 1] = keycode;
			FUNC5(keycode, input_dev->keybit);

			keypad->rotary_rel_code[0] = -1;
		} else {
			keypad->rotary_rel_code[0] = pdata->rotary0_rel_code;
			FUNC5(pdata->rotary0_rel_code, input_dev->relbit);
		}
	}

	if (pdata->enable_rotary1) {
		if (pdata->rotary1_up_key && pdata->rotary1_down_key) {
			keycode = pdata->rotary1_up_key;
			keypad->keycodes[MAX_MATRIX_KEY_NUM + 2] = keycode;
			FUNC5(keycode, input_dev->keybit);

			keycode = pdata->rotary1_down_key;
			keypad->keycodes[MAX_MATRIX_KEY_NUM + 3] = keycode;
			FUNC5(keycode, input_dev->keybit);

			keypad->rotary_rel_code[1] = -1;
		} else {
			keypad->rotary_rel_code[1] = pdata->rotary1_rel_code;
			FUNC5(pdata->rotary1_rel_code, input_dev->relbit);
		}
	}

	FUNC4(KEY_RESERVED, input_dev->keybit);
}