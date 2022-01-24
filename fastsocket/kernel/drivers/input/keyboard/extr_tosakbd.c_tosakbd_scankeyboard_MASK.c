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
struct tosakbd {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  input; int /*<<< orphan*/ * keycode; scalar_t__ suspended; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  KB_ACTIVATE_DELAY ; 
 int /*<<< orphan*/  KB_DISCHARGE_DELAY ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 scalar_t__ SCAN_INTERVAL ; 
 unsigned int TOSA_KEY_SENSE_NUM ; 
 unsigned int TOSA_KEY_STROBE_NUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct tosakbd* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct platform_device *dev)
{
	struct tosakbd *tosakbd = FUNC7(dev);
	unsigned int row, col, rowd;
	unsigned long flags;
	unsigned int num_pressed = 0;

	FUNC8(&tosakbd->lock, flags);

	if (tosakbd->suspended)
		goto out;

	for (col = 0; col < TOSA_KEY_STROBE_NUM; col++) {
		/*
		 * Discharge the output driver capacitatance
		 * in the keyboard matrix. (Yes it is significant..)
		 */
		FUNC12();
		FUNC14(KB_DISCHARGE_DELAY);

		FUNC11(col);
		FUNC14(KB_ACTIVATE_DELAY);

		rowd = FUNC0(col);

		for (row = 0; row < TOSA_KEY_SENSE_NUM; row++) {
			unsigned int scancode, pressed;
			scancode = FUNC2(row, col);
			pressed = rowd & FUNC1(row);

			if (pressed && !tosakbd->keycode[scancode])
				FUNC3(&dev->dev,
						"unhandled scancode: 0x%02x\n",
						scancode);

			FUNC4(tosakbd->input,
					tosakbd->keycode[scancode],
					pressed);
			if (pressed)
				num_pressed++;
		}

		FUNC13(col);
	}

	FUNC10();

	FUNC5(tosakbd->input);

	/* if any keys are pressed, enable the timer */
	if (num_pressed)
		FUNC6(&tosakbd->timer, jiffies + SCAN_INTERVAL);

 out:
	FUNC9(&tosakbd->lock, flags);
}