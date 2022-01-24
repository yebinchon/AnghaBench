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
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  HTCPEN_PORT_DATA ; 
 int /*<<< orphan*/  HTCPEN_PORT_INDEX ; 
 int /*<<< orphan*/  HTCPEN_PORT_IRQ_CLEAR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LSB_XY_INDEX ; 
 int /*<<< orphan*/  TOUCH_INDEX ; 
 unsigned short X_AXIS_MAX ; 
 int /*<<< orphan*/  X_INDEX ; 
 unsigned short Y_AXIS_MAX ; 
 int /*<<< orphan*/  Y_INDEX ; 
 short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 scalar_t__ invert_x ; 
 scalar_t__ invert_y ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *handle)
{
	struct input_dev *htcpen_dev = handle;
	unsigned short x, y, xy;

	/* 0 = press; 1 = release */
	FUNC4(TOUCH_INDEX, HTCPEN_PORT_INDEX);

	if (FUNC0(HTCPEN_PORT_DATA)) {
		FUNC2(htcpen_dev, BTN_TOUCH, 0);
	} else {
		FUNC4(X_INDEX, HTCPEN_PORT_INDEX);
		x = FUNC0(HTCPEN_PORT_DATA);

		FUNC4(Y_INDEX, HTCPEN_PORT_INDEX);
		y = FUNC0(HTCPEN_PORT_DATA);

		FUNC4(LSB_XY_INDEX, HTCPEN_PORT_INDEX);
		xy = FUNC0(HTCPEN_PORT_DATA);

		/* get high resolution value of X and Y using LSB */
		x = X_AXIS_MAX - ((x * 8) + ((xy >> 4) & 0xf));
		y = (y * 8) + (xy & 0xf);
		if (invert_x)
			x = X_AXIS_MAX - x;
		if (invert_y)
			y = Y_AXIS_MAX - y;

		if (x != X_AXIS_MAX && x != 0) {
			FUNC2(htcpen_dev, BTN_TOUCH, 1);
			FUNC1(htcpen_dev, ABS_X, x);
			FUNC1(htcpen_dev, ABS_Y, y);
		}
	}

	FUNC3(htcpen_dev);

	FUNC0(HTCPEN_PORT_IRQ_CLEAR);

	return IRQ_HANDLED;
}