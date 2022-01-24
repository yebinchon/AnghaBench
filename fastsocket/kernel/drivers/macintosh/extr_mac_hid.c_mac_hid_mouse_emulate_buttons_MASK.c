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
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  emumousebtn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int mouse_button2_keycode ; 
 unsigned int mouse_button3_keycode ; 
 int mouse_emulate_buttons ; 
 unsigned int mouse_last_keycode ; 

int FUNC2(int caller, unsigned int keycode, int down)
{
	switch (caller) {
	case 1:
		/* Called from keyboard.c */
		if (mouse_emulate_buttons
		    && (keycode == mouse_button2_keycode
			|| keycode == mouse_button3_keycode)) {
			if (mouse_emulate_buttons == 1) {
				FUNC0(emumousebtn,
						 keycode == mouse_button2_keycode ? BTN_MIDDLE : BTN_RIGHT,
						 down);
				FUNC1(emumousebtn);
				return 1;
			}
			mouse_last_keycode = down ? keycode : 0;
		}
		break;
	}
	return 0;
}