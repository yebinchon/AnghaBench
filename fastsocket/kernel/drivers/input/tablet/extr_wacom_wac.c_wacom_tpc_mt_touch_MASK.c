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
struct wacom_wac {unsigned char* data; TYPE_1__* shared; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int touch_down; int /*<<< orphan*/  stylus_in_proximity; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct wacom_wac *wacom, void *wcombo)
{
	unsigned char *data = wacom->data;
	int contact_with_no_pen_down_count = 0;
	int i;

	for (i = 0; i < 2; i++) {
		int p = data[1] & (1 << i);
		bool touch = p && !wacom->shared->stylus_in_proximity;

		FUNC3(wcombo, i);
		FUNC2(wcombo, MT_TOOL_FINGER, touch);
		if (touch) {
			int x = FUNC0((__le16 *)&data[i * 2 + 2]) & 0x7fff;
			int y = FUNC0((__le16 *)&data[i * 2 + 6]) & 0x7fff;

			FUNC4(wcombo, ABS_MT_POSITION_X, x);
			FUNC4(wcombo, ABS_MT_POSITION_Y, y);
			contact_with_no_pen_down_count++;
		}
	}

	/* keep touch state for pen event */
	wacom->shared->touch_down = (contact_with_no_pen_down_count > 0);

	FUNC1(wcombo, true);

	return 1;
}