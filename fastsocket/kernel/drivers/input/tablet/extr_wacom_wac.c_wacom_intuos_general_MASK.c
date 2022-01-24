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
struct wacom_wac {unsigned char* data; TYPE_1__* features; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_TILT_X ; 
 int /*<<< orphan*/  ABS_TILT_Y ; 
 int /*<<< orphan*/  ABS_WHEEL ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 scalar_t__ INTUOS4L ; 
 scalar_t__ INTUOS4S ; 
 scalar_t__ INTUOS5L ; 
 scalar_t__ INTUOS5S ; 
 scalar_t__ WACOM_21UX2 ; 
 scalar_t__ WACOM_24HD ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct wacom_wac *wacom, void *wcombo)
{
	unsigned char *data = wacom->data;
	unsigned int t;

	/* general pen packet */
	if ((data[1] & 0xb8) == 0xa0) {
		t = (data[6] << 2) | ((data[7] >> 6) & 3);
		if ((wacom->features->type >= INTUOS4S && wacom->features->type <= INTUOS4L) ||
                    (wacom->features->type >= INTUOS5S && wacom->features->type <= INTUOS5L) ||
			(wacom->features->type >= WACOM_21UX2 &&
			wacom->features->type <= WACOM_24HD)) {
			t = (t << 1) | (data[1] & 1);
		}
		FUNC0(wcombo, ABS_PRESSURE, t);
		FUNC0(wcombo, ABS_TILT_X,
				((data[7] << 1) & 0x7e) | (data[8] >> 7));
		FUNC0(wcombo, ABS_TILT_Y, data[8] & 0x7f);
		FUNC1(wcombo, BTN_STYLUS, data[1] & 2);
		FUNC1(wcombo, BTN_STYLUS2, data[1] & 4);
		FUNC1(wcombo, BTN_TOUCH, t > 10);
	}

	/* airbrush second packet */
	if ((data[1] & 0xbc) == 0xb4) {
		FUNC0(wcombo, ABS_WHEEL,
				(data[6] << 2) | ((data[7] >> 6) & 3));
		FUNC0(wcombo, ABS_TILT_X,
				((data[7] << 1) & 0x7e) | (data[8] >> 7));
		FUNC0(wcombo, ABS_TILT_Y, data[8] & 0x7f);
	}
	return;
}