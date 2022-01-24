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
struct wbcir_data {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  last_keycode; int /*<<< orphan*/  rxtrigger; scalar_t__ keypressed; int /*<<< orphan*/  keyup_jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wbcir_lock ; 

__attribute__((used)) static void
FUNC6(unsigned long cookie)
{
	struct wbcir_data *data = (struct wbcir_data *)cookie;
	unsigned long flags;

	/*
	 * data->keyup_jiffies is used to prevent a race condition if a
	 * hardware interrupt occurs at this point and the keyup timer
	 * event is moved further into the future as a result.
	 *
	 * The timer will then be reactivated and this function called
	 * again in the future. We need to exit gracefully in that case
	 * to allow the input subsystem to do its auto-repeat magic or
	 * a keyup event might follow immediately after the keydown.
	 */

	FUNC3(&wbcir_lock, flags);

	if (FUNC5(data->keyup_jiffies) && data->keypressed) {
		data->keypressed = 0;
		FUNC2(data->rxtrigger, LED_OFF);
		FUNC0(data->input_dev, data->last_keycode, 0);
		FUNC1(data->input_dev);
	}

	FUNC4(&wbcir_lock, flags);
}