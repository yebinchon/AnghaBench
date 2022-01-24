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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned char MK712_CONVERSION_COMPLETE ; 
 scalar_t__ MK712_STATUS ; 
 unsigned char MK712_STATUS_TOUCH ; 
 scalar_t__ MK712_X ; 
 scalar_t__ MK712_Y ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  mk712_dev ; 
 scalar_t__ mk712_io ; 
 int /*<<< orphan*/  mk712_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	unsigned char status;
	static int debounce = 1;
	static unsigned short last_x;
	static unsigned short last_y;

	FUNC5(&mk712_lock);

	status = FUNC0(mk712_io + MK712_STATUS);

	if (~status & MK712_CONVERSION_COMPLETE) {
		debounce = 1;
		goto end;
	}

	if (~status & MK712_STATUS_TOUCH) {
		debounce = 1;
		FUNC2(mk712_dev, BTN_TOUCH, 0);
		goto end;
	}

	if (debounce) {
		debounce = 0;
		goto end;
	}

	FUNC2(mk712_dev, BTN_TOUCH, 1);
	FUNC1(mk712_dev, ABS_X, last_x);
	FUNC1(mk712_dev, ABS_Y, last_y);

 end:
	last_x = FUNC4(mk712_io + MK712_X) & 0x0fff;
	last_y = FUNC4(mk712_io + MK712_Y) & 0x0fff;
	FUNC3(mk712_dev);
	FUNC6(&mk712_lock);
	return IRQ_HANDLED;
}