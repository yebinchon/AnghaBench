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
struct wacom_data {unsigned char serial; unsigned char id; int /*<<< orphan*/  tool; } ;
struct input_dev {int dummy; } ;
typedef  int __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct wacom_data *wdata,
			struct input_dev *input, unsigned char *data)
{
	__u16 x, y, pressure;
	__u8 distance;

	switch (data[1]) {
	case 0x80: /* Out of proximity report */
		FUNC2(input, BTN_TOUCH, 0);
		FUNC1(input, ABS_PRESSURE, 0);
		FUNC2(input, wdata->tool, 0);
		FUNC1(input, ABS_MISC, 0);
		FUNC0(input, EV_MSC, MSC_SERIAL, wdata->serial);
		wdata->tool = 0;
		FUNC3(input);
		break;
	case 0xC2: /* Tool report */
		wdata->id = ((data[2] << 4) | (data[3] >> 4) |
			((data[7] & 0x0f) << 20) |
			((data[8] & 0xf0) << 12));
		wdata->serial = ((data[3] & 0x0f) << 28) +
				(data[4] << 20) + (data[5] << 12) +
				(data[6] << 4) + (data[7] >> 4);

		switch (wdata->id) {
		case 0x100802:
			wdata->tool = BTN_TOOL_PEN;
			break;
		case 0x10080A:
			wdata->tool = BTN_TOOL_RUBBER;
			break;
		}
		break;
	default: /* Position/pressure report */
		x = data[2] << 9 | data[3] << 1 | ((data[9] & 0x02) >> 1);
		y = data[4] << 9 | data[5] << 1 | (data[9] & 0x01);
		pressure = (data[6] << 3) | ((data[7] & 0xC0) >> 5)
			| (data[1] & 0x01);
		distance = (data[9] >> 2) & 0x3f;

		FUNC2(input, BTN_TOUCH, pressure > 1);

		FUNC2(input, BTN_STYLUS, data[1] & 0x02);
		FUNC2(input, BTN_STYLUS2, data[1] & 0x04);
		FUNC2(input, wdata->tool, 1);
		FUNC1(input, ABS_X, x);
		FUNC1(input, ABS_Y, y);
		FUNC1(input, ABS_DISTANCE, distance);
		FUNC1(input, ABS_PRESSURE, pressure);
		FUNC1(input, ABS_MISC, wdata->id);
		FUNC0(input, EV_MSC, MSC_SERIAL, wdata->serial);
		FUNC3(input);
		break;
	}

	return;
}