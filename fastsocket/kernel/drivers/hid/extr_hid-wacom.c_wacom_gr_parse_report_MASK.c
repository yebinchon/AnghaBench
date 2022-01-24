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
struct wacom_data {int tool; int butstate; } ;
struct input_dev {unsigned char* absmax; } ;
struct hid_device {int dummy; } ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 size_t ABS_DISTANCE ; 
 size_t ABS_PRESSURE ; 
 size_t ABS_X ; 
 size_t ABS_Y ; 
 int BTN_0 ; 
 int BTN_1 ; 
 int BTN_LEFT ; 
 int BTN_MIDDLE ; 
 int BTN_RIGHT ; 
 int BTN_STYLUS ; 
 int BTN_STYLUS2 ; 
 int BTN_TOOL_FINGER ; 
 int BTN_TOOL_MOUSE ; 
 int BTN_TOOL_PEN ; 
 int BTN_TOOL_RUBBER ; 
 int BTN_TOUCH ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev,
			struct wacom_data *wdata,
			struct input_dev *input, unsigned char *data)
{
	int tool, x, y, rw;

	tool = 0;
	/* Get X & Y positions */
	x = FUNC5(*(__le16 *) &data[2]);
	y = FUNC5(*(__le16 *) &data[4]);

	/* Get current tool identifier */
	if (data[1] & 0x90) { /* If pen is in the in/active area */
		switch ((data[1] >> 5) & 3) {
		case 0:	/* Pen */
			tool = BTN_TOOL_PEN;
			break;

		case 1: /* Rubber */
			tool = BTN_TOOL_RUBBER;
			break;

		case 2: /* Mouse with wheel */
		case 3: /* Mouse without wheel */
			tool = BTN_TOOL_MOUSE;
			break;
		}

		/* Reset tool if out of active tablet area */
		if (!(data[1] & 0x10))
			tool = 0;
	}

	/* If tool changed, notify input subsystem */
	if (wdata->tool != tool) {
		if (wdata->tool) {
			/* Completely reset old tool state */
			if (wdata->tool == BTN_TOOL_MOUSE) {
				FUNC2(input, BTN_LEFT, 0);
				FUNC2(input, BTN_RIGHT, 0);
				FUNC2(input, BTN_MIDDLE, 0);
				FUNC1(input, ABS_DISTANCE,
						input->absmax[ABS_DISTANCE]);
			} else {
				FUNC2(input, BTN_TOUCH, 0);
				FUNC2(input, BTN_STYLUS, 0);
				FUNC2(input, BTN_STYLUS2, 0);
				FUNC1(input, ABS_PRESSURE, 0);
			}
			FUNC2(input, wdata->tool, 0);
			FUNC4(input);
		}
		wdata->tool = tool;
		if (tool)
			FUNC2(input, tool, 1);
	}

	if (tool) {
		FUNC1(input, ABS_X, x);
		FUNC1(input, ABS_Y, y);

		switch ((data[1] >> 5) & 3) {
		case 2: /* Mouse with wheel */
			FUNC2(input, BTN_MIDDLE, data[1] & 0x04);
			rw = (data[6] & 0x01) ? -1 :
				(data[6] & 0x02) ? 1 : 0;
			FUNC3(input, REL_WHEEL, rw);
			/* fall through */

		case 3: /* Mouse without wheel */
			FUNC2(input, BTN_LEFT, data[1] & 0x01);
			FUNC2(input, BTN_RIGHT, data[1] & 0x02);
			/* Compute distance between mouse and tablet */
			rw = 44 - (data[6] >> 2);
			if (rw < 0)
				rw = 0;
			else if (rw > 31)
				rw = 31;
			FUNC1(input, ABS_DISTANCE, rw);
			break;

		default:
			FUNC1(input, ABS_PRESSURE,
					data[6] | (((__u16) (data[1] & 0x08)) << 5));
			FUNC2(input, BTN_TOUCH, data[1] & 0x01);
			FUNC2(input, BTN_STYLUS, data[1] & 0x02);
			FUNC2(input, BTN_STYLUS2, (tool == BTN_TOOL_PEN) && data[1] & 0x04);
			break;
		}

		FUNC4(input);
	}

	/* Report the state of the two buttons at the top of the tablet
	 * as two extra fingerpad keys (buttons 4 & 5). */
	rw = data[7] & 0x03;
	if (rw != wdata->butstate) {
		wdata->butstate = rw;
		FUNC2(input, BTN_0, rw & 0x02);
		FUNC2(input, BTN_1, rw & 0x01);
		FUNC2(input, BTN_TOOL_FINGER, 0xf0);
		FUNC0(input, EV_MSC, MSC_SERIAL, 0xf0);
		FUNC4(input);
	}

	return 1;
}