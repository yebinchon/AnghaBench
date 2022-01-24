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
struct spitzkbd {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  input; scalar_t__ suspend_jiffies; int /*<<< orphan*/ * keycode; scalar_t__ suspended; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_PWR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KB_ACTIVATE_DELAY ; 
 unsigned int KB_COLS ; 
 int /*<<< orphan*/  KB_DISCHARGE_DELAY ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int KB_ROWS ; 
 int /*<<< orphan*/  KEY_SUSPEND ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int SCAN_INTERVAL ; 
 int /*<<< orphan*/  SPITZ_GPIO_ON_KEY ; 
 int /*<<< orphan*/  SPITZ_GPIO_SYNC ; 
 int /*<<< orphan*/  SPITZ_KEY_SYNC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 unsigned int FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct spitzkbd *spitzkbd_data)
{
	unsigned int row, col, rowd;
	unsigned long flags;
	unsigned int num_pressed, pwrkey = ((FUNC1(SPITZ_GPIO_ON_KEY) & FUNC0(SPITZ_GPIO_ON_KEY)) != 0);

	if (spitzkbd_data->suspended)
		return;

	FUNC9(&spitzkbd_data->lock, flags);

	num_pressed = 0;
	for (col = 0; col < KB_COLS; col++) {
		/*
		 * Discharge the output driver capacitatance
		 * in the keyboard matrix. (Yes it is significant..)
		 */

		FUNC13();
		FUNC17(KB_DISCHARGE_DELAY);

		FUNC12(col);
		FUNC17(KB_ACTIVATE_DELAY);

		rowd = FUNC14(col);
		for (row = 0; row < KB_ROWS; row++) {
			unsigned int scancode, pressed;

			scancode = FUNC3(row, col);
			pressed = rowd & FUNC2(row);

			FUNC5(spitzkbd_data->input, spitzkbd_data->keycode[scancode], pressed);

			if (pressed)
				num_pressed++;
		}
		FUNC15(col);
	}

	FUNC11();

	FUNC5(spitzkbd_data->input, SPITZ_KEY_SYNC, (FUNC1(SPITZ_GPIO_SYNC) & FUNC0(SPITZ_GPIO_SYNC)) != 0 );
	FUNC5(spitzkbd_data->input, KEY_SUSPEND, pwrkey);

	if (pwrkey && FUNC16(jiffies, spitzkbd_data->suspend_jiffies + FUNC8(1000))) {
		FUNC4(spitzkbd_data->input, EV_PWR, KEY_SUSPEND, 1);
		spitzkbd_data->suspend_jiffies = jiffies;
	}

	FUNC6(spitzkbd_data->input);

	/* if any keys are pressed, enable the timer */
	if (num_pressed)
		FUNC7(&spitzkbd_data->timer, jiffies + FUNC8(SCAN_INTERVAL));

	FUNC10(&spitzkbd_data->lock, flags);
}