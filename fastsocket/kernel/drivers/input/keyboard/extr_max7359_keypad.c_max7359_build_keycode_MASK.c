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
struct max7359_keypad {unsigned short* keycodes; struct input_dev* input_dev; } ;
struct matrix_keymap_data {int keymap_size; unsigned int* keymap; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned short FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX7359_ROW_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct max7359_keypad *keypad,
				const struct matrix_keymap_data *keymap_data)
{
	struct input_dev *input_dev = keypad->input_dev;
	int i;

	for (i = 0; i < keymap_data->keymap_size; i++) {
		unsigned int key = keymap_data->keymap[i];
		unsigned int row = FUNC1(key);
		unsigned int col = FUNC0(key);
		unsigned int scancode = FUNC3(row, col,
						MAX7359_ROW_SHIFT);
		unsigned short keycode = FUNC2(key);

		keypad->keycodes[scancode] = keycode;
		FUNC5(keycode, input_dev->keybit);
	}
	FUNC4(KEY_RESERVED, input_dev->keybit);
}