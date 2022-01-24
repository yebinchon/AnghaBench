#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wacom_wac {unsigned char* data; scalar_t__* tool; unsigned char* id; TYPE_1__* features; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_WHEEL ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 scalar_t__ BTN_0 ; 
 scalar_t__ BTN_1 ; 
 scalar_t__ BTN_4 ; 
 scalar_t__ BTN_5 ; 
 scalar_t__ BTN_LEFT ; 
 scalar_t__ BTN_MIDDLE ; 
 scalar_t__ BTN_RIGHT ; 
 scalar_t__ BTN_STYLUS ; 
 scalar_t__ BTN_STYLUS2 ; 
 scalar_t__ BTN_TOOL_FINGER ; 
 scalar_t__ BTN_TOOL_MOUSE ; 
 scalar_t__ BTN_TOOL_PEN ; 
 scalar_t__ BTN_TOOL_RUBBER ; 
 scalar_t__ BTN_TOUCH ; 
 unsigned char CURSOR_DEVICE_ID ; 
 unsigned char ERASER_DEVICE_ID ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 void* PAD_DEVICE_ID ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 unsigned char STYLUS_DEVICE_ID ; 
#define  WACOM_G4 129 
#define  WACOM_MO 128 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct wacom_wac *wacom, void *wcombo)
{
	unsigned char *data = wacom->data;
	int x, y, rw;

	if (data[0] != 2) {
		FUNC0("wacom_graphire_irq: received unknown report #%d", data[0]);
		return 0;
	}

	if (data[1] & 0x80) {
		/* in prox and not a pad data */

		switch ((data[1] >> 5) & 3) {

			case 0:	/* Pen */
				wacom->tool[0] = BTN_TOOL_PEN;
				wacom->id[0] = STYLUS_DEVICE_ID;
				break;

			case 1: /* Rubber */
				wacom->tool[0] = BTN_TOOL_RUBBER;
				wacom->id[0] = ERASER_DEVICE_ID;
				break;

			case 2: /* Mouse with wheel */
				FUNC5(wcombo, BTN_MIDDLE, data[1] & 0x04);
				if (wacom->features->type == WACOM_G4 ||
						wacom->features->type == WACOM_MO) {
					rw = data[7] & 0x04 ? (data[7] & 0x03)-4 : (data[7] & 0x03);
					FUNC6(wcombo, REL_WHEEL, -rw);
				} else
					FUNC6(wcombo, REL_WHEEL, -(signed char) data[6]);
				/* fall through */

			case 3: /* Mouse without wheel */
				wacom->tool[0] = BTN_TOOL_MOUSE;
				wacom->id[0] = CURSOR_DEVICE_ID;
				FUNC5(wcombo, BTN_LEFT, data[1] & 0x01);
				FUNC5(wcombo, BTN_RIGHT, data[1] & 0x02);
				if (wacom->features->type == WACOM_G4 ||
						wacom->features->type == WACOM_MO)
					FUNC4(wcombo, ABS_DISTANCE, data[6] & 0x3f);
				else
					FUNC4(wcombo, ABS_DISTANCE, data[7] & 0x3f);
				break;
		}
		x = FUNC3(&data[2]);
		y = FUNC3(&data[4]);
		FUNC4(wcombo, ABS_X, x);
		FUNC4(wcombo, ABS_Y, y);
		if (wacom->tool[0] != BTN_TOOL_MOUSE) {
			FUNC4(wcombo, ABS_PRESSURE, data[6] | ((data[7] & 0x01) << 8));
			FUNC5(wcombo, BTN_TOUCH, data[1] & 0x01);
			FUNC5(wcombo, BTN_STYLUS, data[1] & 0x02);
			FUNC5(wcombo, BTN_STYLUS2, data[1] & 0x04);
		}
		FUNC4(wcombo, ABS_MISC, wacom->id[0]); /* report tool id */
		FUNC5(wcombo, wacom->tool[0], 1);
	} else if (wacom->id[0]) {
		FUNC4(wcombo, ABS_X, 0);
		FUNC4(wcombo, ABS_Y, 0);
		if (wacom->tool[0] == BTN_TOOL_MOUSE) {
			FUNC5(wcombo, BTN_LEFT, 0);
			FUNC5(wcombo, BTN_RIGHT, 0);
			FUNC4(wcombo, ABS_DISTANCE, 0);
		} else {
			FUNC4(wcombo, ABS_PRESSURE, 0);
			FUNC5(wcombo, BTN_TOUCH, 0);
			FUNC5(wcombo, BTN_STYLUS, 0);
			FUNC5(wcombo, BTN_STYLUS2, 0);
		}
		wacom->id[0] = 0;
		FUNC4(wcombo, ABS_MISC, 0); /* reset tool id */
		FUNC5(wcombo, wacom->tool[0], 0);
	}

	/* send pad data */
	switch (wacom->features->type) {
	    case WACOM_G4:
		if (data[7] & 0xf8) {
			FUNC2(wcombo); /* sync last event */
			wacom->id[1] = PAD_DEVICE_ID;
			FUNC5(wcombo, BTN_0, (data[7] & 0x40));
			FUNC5(wcombo, BTN_4, (data[7] & 0x80));
			rw = ((data[7] & 0x18) >> 3) - ((data[7] & 0x20) >> 3);
			FUNC6(wcombo, REL_WHEEL, rw);
			FUNC5(wcombo, BTN_TOOL_FINGER, 0xf0);
			FUNC4(wcombo, ABS_MISC, wacom->id[1]);
			FUNC1(wcombo, EV_MSC, MSC_SERIAL, 0xf0);
		} else if (wacom->id[1]) {
			FUNC2(wcombo); /* sync last event */
			wacom->id[1] = 0;
			FUNC5(wcombo, BTN_0, (data[7] & 0x40));
			FUNC5(wcombo, BTN_4, (data[7] & 0x80));
			FUNC5(wcombo, BTN_TOOL_FINGER, 0);
			FUNC4(wcombo, ABS_MISC, 0);
			FUNC1(wcombo, EV_MSC, MSC_SERIAL, 0xf0);
		}
		break;
	    case WACOM_MO:
		if ((data[7] & 0xf8) || (data[8] & 0xff)) {
			FUNC2(wcombo); /* sync last event */
			wacom->id[1] = PAD_DEVICE_ID;
			FUNC5(wcombo, BTN_0, (data[7] & 0x08));
			FUNC5(wcombo, BTN_1, (data[7] & 0x20));
			FUNC5(wcombo, BTN_4, (data[7] & 0x10));
			FUNC5(wcombo, BTN_5, (data[7] & 0x40));
			FUNC4(wcombo, ABS_WHEEL, (data[8] & 0x7f));
			FUNC5(wcombo, BTN_TOOL_FINGER, 0xf0);
			FUNC4(wcombo, ABS_MISC, wacom->id[1]);
			FUNC1(wcombo, EV_MSC, MSC_SERIAL, 0xf0);
		} else if (wacom->id[1]) {
			FUNC2(wcombo); /* sync last event */
			wacom->id[1] = 0;
			FUNC5(wcombo, BTN_0, (data[7] & 0x08));
			FUNC5(wcombo, BTN_1, (data[7] & 0x20));
			FUNC5(wcombo, BTN_4, (data[7] & 0x10));
			FUNC5(wcombo, BTN_5, (data[7] & 0x40));
			FUNC4(wcombo, ABS_WHEEL, (data[8] & 0x7f));
			FUNC5(wcombo, BTN_TOOL_FINGER, 0);
			FUNC4(wcombo, ABS_MISC, 0);
			FUNC1(wcombo, EV_MSC, MSC_SERIAL, 0xf0);
		}
		break;
	}
	return 1;
}