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
struct corgikbd {scalar_t__* keycode; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  input; scalar_t__ suspend_jiffies; scalar_t__ suspended; } ;

/* Variables and functions */
 scalar_t__ CORGI_KEY_OFF ; 
 int /*<<< orphan*/  EV_PWR ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  KB_ACTIVATE_DELAY ; 
 unsigned int KB_COLS ; 
 int /*<<< orphan*/  KB_DISCHARGE_DELAY ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int KB_ROWS ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  SCAN_INTERVAL ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct corgikbd *corgikbd_data)
{
	unsigned int row, col, rowd;
	unsigned long flags;
	unsigned int num_pressed;

	if (corgikbd_data->suspended)
		return;

	FUNC12(&corgikbd_data->lock, flags);

	num_pressed = 0;
	for (col = 0; col < KB_COLS; col++) {
		/*
		 * Discharge the output driver capacitatance
		 * in the keyboard matrix. (Yes it is significant..)
		 */

		FUNC5();
		FUNC15(KB_DISCHARGE_DELAY);

		FUNC4(col);
		FUNC15(KB_ACTIVATE_DELAY);

		rowd = FUNC0(col);
		for (row = 0; row < KB_ROWS; row++) {
			unsigned int scancode, pressed;

			scancode = FUNC2(row, col);
			pressed = rowd & FUNC1(row);

			FUNC8(corgikbd_data->input, corgikbd_data->keycode[scancode], pressed);

			if (pressed)
				num_pressed++;

			if (pressed && (corgikbd_data->keycode[scancode] == CORGI_KEY_OFF)
					&& FUNC14(jiffies, corgikbd_data->suspend_jiffies + HZ)) {
				FUNC7(corgikbd_data->input, EV_PWR, CORGI_KEY_OFF, 1);
				corgikbd_data->suspend_jiffies=jiffies;
			}
		}
		FUNC6(col);
	}

	FUNC3();

	FUNC9(corgikbd_data->input);

	/* if any keys are pressed, enable the timer */
	if (num_pressed)
		FUNC10(&corgikbd_data->timer, jiffies + FUNC11(SCAN_INTERVAL));

	FUNC13(&corgikbd_data->lock, flags);
}