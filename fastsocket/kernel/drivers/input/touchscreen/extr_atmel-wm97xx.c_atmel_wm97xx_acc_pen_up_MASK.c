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
struct wm97xx {struct input_dev* input_dev; int /*<<< orphan*/  touch_dev; } ;
struct input_dev {int dummy; } ;
struct atmel_wm97xx {int /*<<< orphan*/  pen_timer; int /*<<< orphan*/  gpio_pen; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 struct atmel_wm97xx* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ pressure ; 

__attribute__((used)) static void FUNC7(struct wm97xx *wm)
{
	struct atmel_wm97xx *atmel_wm97xx = FUNC6(wm->touch_dev);
	struct input_dev *input_dev = wm->input_dev;
	int pen_down = FUNC0(atmel_wm97xx->gpio_pen);

	if (pen_down != 0) {
		FUNC4(&atmel_wm97xx->pen_timer,
			  jiffies + FUNC5(1));
	} else {
		if (pressure)
			FUNC1(input_dev, ABS_PRESSURE, 0);
		FUNC2(input_dev, BTN_TOUCH, 0);
		FUNC3(input_dev);
	}
}