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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct wbcir_data {scalar_t__ last_scancode; scalar_t__ last_toggle; int keypressed; unsigned int last_keycode; scalar_t__ keyup_jiffies; int /*<<< orphan*/  timer_keyup; int /*<<< orphan*/  rxtrigger; int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  IR_KEYPRESS_TIMEOUT ; 
 unsigned int KEY_RESERVED ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct wbcir_data*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct wbcir_data *data, u32 scancode, u8 toggle)
{
	unsigned int keycode;

	/* Repeat? */
	if (data->last_scancode == scancode &&
	    data->last_toggle == toggle &&
	    data->keypressed)
		goto set_timer;
	data->last_scancode = scancode;

	/* Do we need to release an old keypress? */
	if (data->keypressed) {
		FUNC1(data->input_dev, data->last_keycode, 0);
		FUNC2(data->input_dev);
		data->keypressed = 0;
	}

	/* Report scancode */
	FUNC0(data->input_dev, EV_MSC, MSC_SCAN, (int)scancode);

	/* Do we know this scancode? */
	keycode = FUNC6(data, scancode);
	if (keycode == KEY_RESERVED)
		goto set_timer;

	/* Register a keypress */
	FUNC1(data->input_dev, keycode, 1);
	data->keypressed = 1;
	data->last_keycode = keycode;
	data->last_toggle = toggle;

set_timer:
	FUNC2(data->input_dev);
	FUNC3(data->rxtrigger,
			  data->keypressed ? LED_FULL : LED_OFF);
	data->keyup_jiffies = jiffies + FUNC5(IR_KEYPRESS_TIMEOUT);
	FUNC4(&data->timer_keyup, data->keyup_jiffies);
}