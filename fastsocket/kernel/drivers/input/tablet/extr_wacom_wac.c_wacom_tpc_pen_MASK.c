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
struct wacom_wac {char* data; int* id; int /*<<< orphan*/ * tool; TYPE_1__* shared; struct wacom_features* features; } ;
struct wacom_features {int pressure_max; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int stylus_in_proximity; int /*<<< orphan*/  touch_down; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct wacom_wac *wacom, void *wcombo)
{
	struct wacom_features *features = wacom->features;
	char *data = wacom->data;
	int pressure;
	bool prox = data[1] & 0x20;

	if (!wacom->shared->stylus_in_proximity) /* first in prox */
		/* Going into proximity select tool */
		wacom->tool[0] = (data[1] & 0x0c) ? BTN_TOOL_RUBBER : BTN_TOOL_PEN;

	/* keep pen state for touch events */
	wacom->shared->stylus_in_proximity = prox;

	/* send pen events only when touch is up or forced out */
	if (!wacom->shared->touch_down) {
		FUNC2(wcombo, BTN_STYLUS, data[1] & 0x02);
		FUNC2(wcombo, BTN_STYLUS2, data[1] & 0x10);
		FUNC1(wcombo, ABS_X, FUNC0((__le16 *)&data[2]));
		FUNC1(wcombo, ABS_Y, FUNC0((__le16 *)&data[4]));
		pressure = ((data[7] & 0x01) << 8) | data[6];
		if (pressure < 0)
			pressure = features->pressure_max + pressure + 1;
		FUNC1(wcombo, ABS_PRESSURE, pressure);
		FUNC2(wcombo, BTN_TOUCH, data[1] & 0x05);
		FUNC2(wcombo, wacom->tool[0], prox);
		FUNC1(wcombo, ABS_MISC, wacom->id[0]);
		return 1;
	}

	return 0;
}