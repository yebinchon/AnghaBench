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
struct wacom_wac {unsigned char* data; scalar_t__* tool; unsigned char* id; int* serial; TYPE_1__* features; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RY ; 
 int /*<<< orphan*/  ABS_RZ ; 
 int /*<<< orphan*/  ABS_THROTTLE ; 
 int /*<<< orphan*/  ABS_TILT_X ; 
 int /*<<< orphan*/  ABS_TILT_Y ; 
 int /*<<< orphan*/  ABS_WHEEL ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 scalar_t__ BTN_0 ; 
 scalar_t__ BTN_1 ; 
 scalar_t__ BTN_2 ; 
 scalar_t__ BTN_3 ; 
 scalar_t__ BTN_4 ; 
 scalar_t__ BTN_5 ; 
 scalar_t__ BTN_6 ; 
 scalar_t__ BTN_7 ; 
 scalar_t__ BTN_8 ; 
 scalar_t__ BTN_9 ; 
 scalar_t__ BTN_A ; 
 scalar_t__ BTN_B ; 
 scalar_t__ BTN_BASE ; 
 scalar_t__ BTN_BASE2 ; 
 scalar_t__ BTN_C ; 
 scalar_t__ BTN_EXTRA ; 
 scalar_t__ BTN_LEFT ; 
 scalar_t__ BTN_MIDDLE ; 
 scalar_t__ BTN_RIGHT ; 
 scalar_t__ BTN_SIDE ; 
 scalar_t__ BTN_TOOL_FINGER ; 
 scalar_t__ BTN_TOOL_LENS ; 
 scalar_t__ BTN_TOOL_MOUSE ; 
 scalar_t__ BTN_X ; 
 scalar_t__ BTN_Y ; 
 scalar_t__ BTN_Z ; 
 scalar_t__ CINTIQ ; 
 int /*<<< orphan*/  EV_MSC ; 
 scalar_t__ INTUOS ; 
 scalar_t__ INTUOS3 ; 
 scalar_t__ INTUOS3L ; 
 scalar_t__ INTUOS3S ; 
 scalar_t__ INTUOS4 ; 
 scalar_t__ INTUOS4L ; 
 scalar_t__ INTUOS4S ; 
 scalar_t__ INTUOS5 ; 
 scalar_t__ INTUOS5L ; 
 scalar_t__ INTUOS5S ; 
 scalar_t__ KEY_PROG1 ; 
 scalar_t__ KEY_PROG2 ; 
 scalar_t__ KEY_PROG3 ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 unsigned char PAD_DEVICE_ID ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 scalar_t__ WACOM_21UX2 ; 
 scalar_t__ WACOM_22HD ; 
 scalar_t__ WACOM_24HD ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 unsigned char FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wacom_wac*,void*) ; 
 int FUNC4 (struct wacom_wac*,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC8(struct wacom_wac *wacom, void *wcombo)
{
	unsigned char *data = wacom->data;
	unsigned int t;
	int idx = 0, result;

	if (data[0] != 2 && data[0] != 3 && data[0] != 5 && data[0] != 6 && data[0] != 12) {
		FUNC0("wacom_intuos_irq: received unknown report #%d", data[0]);
                return 0;
	}

	/* tool number */
	if (wacom->features->type == INTUOS)
		idx = data[1] & 0x01;

	/* pad packets. Works as a second tool and is always in prox */
	if (data[0] == 12 || data[0] == 3) {
		/* initiate the pad as a device */
		if (wacom->tool[1] != BTN_TOOL_FINGER)
			wacom->tool[1] = BTN_TOOL_FINGER;

		if (wacom->features->type >= INTUOS4S && wacom->features->type <= INTUOS4L) {
			FUNC6(wcombo, BTN_0, (data[2] & 0x01));
			FUNC6(wcombo, BTN_1, (data[3] & 0x01));
			FUNC6(wcombo, BTN_2, (data[3] & 0x02));
			FUNC6(wcombo, BTN_3, (data[3] & 0x04));
			FUNC6(wcombo, BTN_4, (data[3] & 0x08));
			FUNC6(wcombo, BTN_5, (data[3] & 0x10));
			FUNC6(wcombo, BTN_6, (data[3] & 0x20));
			if (data[1] & 0x80) {
				FUNC5(wcombo, ABS_WHEEL, (data[1] & 0x7f));
			} else {
				/* Out of proximity, clear wheel value. */
				FUNC5(wcombo, ABS_WHEEL, 0);
			}
			if (wacom->features->type != INTUOS4S) {
				FUNC6(wcombo, BTN_7, (data[3] & 0x40));
				FUNC6(wcombo, BTN_8, (data[3] & 0x80));
			}
			if (data[1] | (data[2] & 0x01) | data[3]) {
				FUNC6(wcombo, wacom->tool[1], 1);
				FUNC5(wcombo, ABS_MISC, PAD_DEVICE_ID);
			} else {
				FUNC6(wcombo, wacom->tool[1], 0);
				FUNC5(wcombo, ABS_MISC, 0);
			}
		} else if (wacom->features->type == WACOM_24HD) {
			FUNC6(wcombo, BTN_0, (data[6] & 0x01));
			FUNC6(wcombo, BTN_1, (data[6] & 0x02));
			FUNC6(wcombo, BTN_2, (data[6] & 0x04));
			FUNC6(wcombo, BTN_3, (data[6] & 0x08));
			FUNC6(wcombo, BTN_4, (data[6] & 0x10));
			FUNC6(wcombo, BTN_5, (data[6] & 0x20));
			FUNC6(wcombo, BTN_6, (data[6] & 0x40));
			FUNC6(wcombo, BTN_7, (data[6] & 0x80));
			FUNC6(wcombo, BTN_8, (data[8] & 0x01));
			FUNC6(wcombo, BTN_9, (data[8] & 0x02));
			FUNC6(wcombo, BTN_A, (data[8] & 0x04));
			FUNC6(wcombo, BTN_B, (data[8] & 0x08));
			FUNC6(wcombo, BTN_C, (data[8] & 0x10));
			FUNC6(wcombo, BTN_X, (data[8] & 0x20));
			FUNC6(wcombo, BTN_Y, (data[8] & 0x40));
			FUNC6(wcombo, BTN_Z, (data[8] & 0x80));

			/*
			 * Three "buttons" are available on the 24HD which are
			 * physically implemented as a touchstrip. Each button
			 * is approximately 3 bits wide with a 2 bit spacing.
			 * The raw touchstrip bits are stored at:
			 *    ((data[3] & 0x1f) << 8) | data[4])
			 */
			FUNC6(wcombo, KEY_PROG1, data[4] & 0x07);
			FUNC6(wcombo, KEY_PROG2, data[4] & 0xE0);
			FUNC6(wcombo, KEY_PROG3, data[3] & 0x1C);

			if (data[1] & 0x80) {
				FUNC5(wcombo, ABS_WHEEL, (data[1] & 0x7f));
			} else {
				/* Out of proximity, clear wheel value. */
				FUNC5(wcombo, ABS_WHEEL, 0);
			}

			if (data[2] & 0x80) {
				FUNC5(wcombo, ABS_THROTTLE, (data[2] & 0x7f));
			} else {
				/* Out of proximity, clear second wheel value. */
				FUNC5(wcombo, ABS_THROTTLE, 0);
			}

			if (data[1] | data[2] | (data[3] & 0x1f) | data[4] | data[6] | data[8]) {
				FUNC6(wcombo, wacom->tool[1], 1);
				FUNC5(wcombo, ABS_MISC, PAD_DEVICE_ID);
			} else {
				FUNC6(wcombo, wacom->tool[1], 0);
				FUNC5(wcombo, ABS_MISC, 0);
			}
		} else if (wacom->features->type >= INTUOS5S && wacom->features->type <= INTUOS5L) {
			int i;

			/* Touch ring mode switch has no capacitive sensor */
			FUNC6(wcombo, BTN_0, (data[3] & 0x01));

			/*
			 * ExpressKeys on Intuos5 have a capacitive sensor in
			 * addition to the mechanical switch. Switch data is
			 * stored in data[4], capacitive data in data[5].
			 */
			for (i = 0; i < 8; i++)
				FUNC6(wcombo, BTN_1 + i, data[4] & (1 << i));

			if (data[2] & 0x80) {
				FUNC5(wcombo, ABS_WHEEL, (data[2] & 0x7f));
			} else {
				/* Out of proximity, clear wheel value. */
				FUNC5(wcombo, ABS_WHEEL, 0);
			}

			if (data[2] | (data[3] & 0x01) | data[4]) {
				FUNC6(wcombo, wacom->tool[1], 1);
				FUNC5(wcombo, ABS_MISC, PAD_DEVICE_ID);
			} else {
				FUNC6(wcombo, wacom->tool[1], 0);
				FUNC5(wcombo, ABS_MISC, 0);
			}
		} else {
			if (wacom->features->type == WACOM_21UX2 ||
			    wacom->features->type == WACOM_22HD) {
				FUNC6(wcombo, BTN_0, (data[5] & 0x01));
				FUNC6(wcombo, BTN_1, (data[6] & 0x01));
				FUNC6(wcombo, BTN_2, (data[6] & 0x02));
				FUNC6(wcombo, BTN_3, (data[6] & 0x04));
				FUNC6(wcombo, BTN_4, (data[6] & 0x08));
				FUNC6(wcombo, BTN_5, (data[6] & 0x10));
				FUNC6(wcombo, BTN_6, (data[6] & 0x20));
				FUNC6(wcombo, BTN_7, (data[6] & 0x40));
				FUNC6(wcombo, BTN_8, (data[6] & 0x80));
				FUNC6(wcombo, BTN_9, (data[7] & 0x01));
				FUNC6(wcombo, BTN_A, (data[8] & 0x01));
				FUNC6(wcombo, BTN_B, (data[8] & 0x02));
				FUNC6(wcombo, BTN_C, (data[8] & 0x04));
				FUNC6(wcombo, BTN_X, (data[8] & 0x08));
				FUNC6(wcombo, BTN_Y, (data[8] & 0x10));
				FUNC6(wcombo, BTN_Z, (data[8] & 0x20));
				FUNC6(wcombo, BTN_BASE, (data[8] & 0x40));
				FUNC6(wcombo, BTN_BASE2, (data[8] & 0x80));
				if (wacom->features->type == WACOM_22HD) {
					FUNC6(wcombo, KEY_PROG1, data[9] & 0x01);
					FUNC6(wcombo, KEY_PROG2, data[9] & 0x02);
					FUNC6(wcombo, KEY_PROG3, data[9] & 0x04);
				}
			} else {
				FUNC6(wcombo, BTN_0, (data[5] & 0x01));
				FUNC6(wcombo, BTN_1, (data[5] & 0x02));
				FUNC6(wcombo, BTN_2, (data[5] & 0x04));
				FUNC6(wcombo, BTN_3, (data[5] & 0x08));
				FUNC6(wcombo, BTN_4, (data[6] & 0x01));
				FUNC6(wcombo, BTN_5, (data[6] & 0x02));
				FUNC6(wcombo, BTN_6, (data[6] & 0x04));
				FUNC6(wcombo, BTN_7, (data[6] & 0x08));
				FUNC6(wcombo, BTN_8, (data[5] & 0x10));
				FUNC6(wcombo, BTN_9, (data[6] & 0x10));
			}
			FUNC5(wcombo, ABS_RX, ((data[1] & 0x1f) << 8) | data[2]);
			FUNC5(wcombo, ABS_RY, ((data[3] & 0x1f) << 8) | data[4]);

			if ((data[5] & 0x1f) | data[6] | (data[1] & 0x1f) |
				data[2] | (data[3] & 0x1f) | data[4] | data[8] |
				(data[7] & 0x01)) {
				FUNC6(wcombo, wacom->tool[1], 1);
				FUNC5(wcombo, ABS_MISC, PAD_DEVICE_ID);
			} else {
				FUNC6(wcombo, wacom->tool[1], 0);
				FUNC5(wcombo, ABS_MISC, 0);
			}
		}
		FUNC2(wcombo, EV_MSC, MSC_SERIAL, 0xffffffff);
                return 1;
	}

	/* process in/out prox events */
	result = FUNC4(wacom, wcombo);
	if (result)
                return result-1;

	/* don't proceed if we don't know the ID */
	if (!wacom->id[idx])
		return 0;

	/* Only large Intuos support Lense Cursor */
	if ((wacom->tool[idx] == BTN_TOOL_LENS)
			&& ((wacom->features->type == INTUOS3)
			|| (wacom->features->type == INTUOS3S)
			|| (wacom->features->type == INTUOS4)
			|| (wacom->features->type == INTUOS4S)
			|| (wacom->features->type == INTUOS5)
			|| (wacom->features->type == INTUOS5S)))
		return 0;

	/* Cintiq doesn't send data when RDY bit isn't set */
	if ((wacom->features->type == CINTIQ) && !(data[1] & 0x40))
                 return 0;

	if (wacom->features->type >= INTUOS3S) {
		FUNC5(wcombo, ABS_X, (data[2] << 9) | (data[3] << 1) | ((data[9] >> 1) & 1));
		FUNC5(wcombo, ABS_Y, (data[4] << 9) | (data[5] << 1) | (data[9] & 1));
		FUNC5(wcombo, ABS_DISTANCE, ((data[9] >> 2) & 0x3f));
	} else {
		FUNC5(wcombo, ABS_X, FUNC1(&data[2]));
		FUNC5(wcombo, ABS_Y, FUNC1(&data[4]));
		FUNC5(wcombo, ABS_DISTANCE, ((data[9] >> 3) & 0x1f));
	}

	/* process general packets */
	FUNC3(wacom, wcombo);

	/* 4D mouse, 2D mouse, marker pen rotation, tilt mouse, or Lens cursor packets */
	if ((data[1] & 0xbc) == 0xa8 || (data[1] & 0xbe) == 0xb0 || (data[1] & 0xbc) == 0xac) {

		if (data[1] & 0x02) {
			/* Rotation packet */
			if (wacom->features->type >= INTUOS3S) {
				/* I3 marker pen rotation */
				t = (data[6] << 3) | ((data[7] >> 5) & 7);
				t = (data[7] & 0x20) ? ((t > 900) ? ((t-1) / 2 - 1350) :
					((t-1) / 2 + 450)) : (450 - t / 2) ;
				FUNC5(wcombo, ABS_Z, t);
			} else {
				/* 4D mouse rotation packet */
				t = (data[6] << 3) | ((data[7] >> 5) & 7);
				FUNC5(wcombo, ABS_RZ, (data[7] & 0x20) ?
					((t - 1) / 2) : -t / 2);
			}

		} else if (!(data[1] & 0x10) && wacom->features->type < INTUOS3S) {
			/* 4D mouse packet */
			FUNC6(wcombo, BTN_LEFT,   data[8] & 0x01);
			FUNC6(wcombo, BTN_MIDDLE, data[8] & 0x02);
			FUNC6(wcombo, BTN_RIGHT,  data[8] & 0x04);

			FUNC6(wcombo, BTN_SIDE,   data[8] & 0x20);
			FUNC6(wcombo, BTN_EXTRA,  data[8] & 0x10);
			t = (data[6] << 2) | ((data[7] >> 6) & 3);
			FUNC5(wcombo, ABS_THROTTLE, (data[8] & 0x08) ? -t : t);

		} else if (wacom->tool[idx] == BTN_TOOL_MOUSE) {
			/* I4 mouse */
			if ((wacom->features->type >= INTUOS4S && wacom->features->type <= INTUOS4L) ||
			    (wacom->features->type >= INTUOS5S && wacom->features->type <= INTUOS5L)) {
				FUNC6(wcombo, BTN_LEFT,   data[6] & 0x01);
				FUNC6(wcombo, BTN_MIDDLE, data[6] & 0x02);
				FUNC6(wcombo, BTN_RIGHT,  data[6] & 0x04);
				FUNC7(wcombo, REL_WHEEL, ((data[7] & 0x80) >> 7)
						 - ((data[7] & 0x40) >> 6));
				FUNC6(wcombo, BTN_SIDE,   data[6] & 0x08);
				FUNC6(wcombo, BTN_EXTRA,  data[6] & 0x10);

				FUNC5(wcombo, ABS_TILT_X,
					((data[7] << 1) & 0x7e) | (data[8] >> 7));
				FUNC5(wcombo, ABS_TILT_Y, data[8] & 0x7f);
			} else {
				/* 2D mouse packet */
				FUNC6(wcombo, BTN_LEFT,   data[8] & 0x04);
				FUNC6(wcombo, BTN_MIDDLE, data[8] & 0x08);
				FUNC6(wcombo, BTN_RIGHT,  data[8] & 0x10);
				FUNC7(wcombo, REL_WHEEL, (data[8] & 0x01)
						 - ((data[8] & 0x02) >> 1));

				/* I3 2D mouse side buttons */
				if (wacom->features->type >= INTUOS3S && wacom->features->type <= INTUOS3L) {
					FUNC6(wcombo, BTN_SIDE,   data[8] & 0x40);
					FUNC6(wcombo, BTN_EXTRA,  data[8] & 0x20);
				}
			}
		} else if ((wacom->features->type < INTUOS3S || wacom->features->type == INTUOS3L ||
			   wacom->features->type == INTUOS4L || wacom->features->type == INTUOS5L) &&
			   wacom->tool[idx] == BTN_TOOL_LENS) {
			/* Lens cursor packets */
			FUNC6(wcombo, BTN_LEFT,   data[8] & 0x01);
			FUNC6(wcombo, BTN_MIDDLE, data[8] & 0x02);
			FUNC6(wcombo, BTN_RIGHT,  data[8] & 0x04);
			FUNC6(wcombo, BTN_SIDE,   data[8] & 0x10);
			FUNC6(wcombo, BTN_EXTRA,  data[8] & 0x08);
		}
	}

	FUNC5(wcombo, ABS_MISC, wacom->id[idx]); /* report tool id */
	FUNC6(wcombo, wacom->tool[idx], 1);
	FUNC2(wcombo, EV_MSC, MSC_SERIAL, wacom->serial[idx]);
	return 1;
}