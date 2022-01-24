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
struct wacom_wac {char* data; int* id; int /*<<< orphan*/ * tool; struct wacom_features* features; } ;
struct wacom_features {int pressure_max; } ;
typedef  int /*<<< orphan*/  __le16 ;

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
 int ERASER_DEVICE_ID ; 
 int STYLUS_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct wacom_wac *wacom, void *wcombo)
{
	struct wacom_features *features = wacom->features;
	char *data = wacom->data;
	int prox = data[1] & 0x20, pressure;

	FUNC0("wacom_dtu_irq: received report #%d", data[0]);

	if (prox) {
		/* Going into proximity select tool */
		wacom->tool[0] = (data[1] & 0x0c) ? BTN_TOOL_RUBBER : BTN_TOOL_PEN;
		if (wacom->tool[0] == BTN_TOOL_PEN)
			wacom->id[0] = STYLUS_DEVICE_ID;
		else
			wacom->id[0] = ERASER_DEVICE_ID;
	}
	FUNC4(wcombo, BTN_STYLUS, data[1] & 0x02);
	FUNC4(wcombo, BTN_STYLUS2, data[1] & 0x10);
	FUNC3(wcombo, ABS_X, FUNC1((__le16 *)&data[2]));
	FUNC3(wcombo, ABS_Y, FUNC1((__le16 *)&data[4]));
	pressure = ((data[7] & 0x01) << 8) | data[6];
	if (pressure < 0)
		pressure = features->pressure_max + pressure + 1;
	FUNC3(wcombo, ABS_PRESSURE, pressure);
	FUNC4(wcombo, BTN_TOUCH, data[1] & 0x05);
	if (!prox) /* out-prox */
		wacom->id[0] = 0;
	FUNC4(wcombo, wacom->tool[0], prox);
	FUNC3(wcombo, ABS_MISC, wacom->id[0]);
	FUNC2(wcombo);
	return 1;
}