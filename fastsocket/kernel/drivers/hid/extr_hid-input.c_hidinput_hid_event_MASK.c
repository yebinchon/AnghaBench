#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct input_dev {int /*<<< orphan*/  key; } ;
struct hid_usage {scalar_t__ type; scalar_t__ hat_min; scalar_t__ hat_max; int hat_dir; int code; int hid; } ;
struct hid_field {int logical_minimum; int logical_maximum; int flags; TYPE_1__* hidinput; } ;
struct hid_device {unsigned int quirks; } ;
typedef  int __s32 ;
struct TYPE_4__ {int x; int y; } ;
struct TYPE_3__ {struct input_dev* input; } ;

/* Variables and functions */
 int ABS_VOLUME ; 
 int BTN_TOOL_RUBBER ; 
 int BTN_TOUCH ; 
 scalar_t__ EV_ABS ; 
 scalar_t__ EV_KEY ; 
 scalar_t__ EV_MSC ; 
 int HID_MAIN_ITEM_RELATIVE ; 
 unsigned int HID_QUIRK_INVERT ; 
 unsigned int HID_QUIRK_NOTOUCH ; 
 int HID_UP_DIGITIZER ; 
 int HID_UP_PID ; 
 int KEY_VOLUMEDOWN ; 
 int KEY_VOLUMEUP ; 
 int MSC_SCAN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_2__* hid_hat_to_axis ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(struct hid_device *hid, struct hid_field *field, struct hid_usage *usage, __s32 value)
{
	struct input_dev *input;
	unsigned *quirks = &hid->quirks;

	if (!field->hidinput)
		return;

	input = field->hidinput->input;

	if (!usage->type)
		return;

	if (usage->hat_min < usage->hat_max || usage->hat_dir) {
		int hat_dir = usage->hat_dir;
		if (!hat_dir)
			hat_dir = (value - usage->hat_min) * 8 / (usage->hat_max - usage->hat_min + 1) + 1;
		if (hat_dir < 0 || hat_dir > 8) hat_dir = 0;
		FUNC2(input, usage->type, usage->code    , hid_hat_to_axis[hat_dir].x);
                FUNC2(input, usage->type, usage->code + 1, hid_hat_to_axis[hat_dir].y);
                return;
        }

	if (usage->hid == (HID_UP_DIGITIZER | 0x003c)) { /* Invert */
		*quirks = value ? (*quirks | HID_QUIRK_INVERT) : (*quirks & ~HID_QUIRK_INVERT);
		return;
	}

	if (usage->hid == (HID_UP_DIGITIZER | 0x0032)) { /* InRange */
		if (value) {
			FUNC2(input, usage->type, (*quirks & HID_QUIRK_INVERT) ? BTN_TOOL_RUBBER : usage->code, 1);
			return;
		}
		FUNC2(input, usage->type, usage->code, 0);
		FUNC2(input, usage->type, BTN_TOOL_RUBBER, 0);
		return;
	}

	if (usage->hid == (HID_UP_DIGITIZER | 0x0030) && (*quirks & HID_QUIRK_NOTOUCH)) { /* Pressure */
		int a = field->logical_minimum;
		int b = field->logical_maximum;
		FUNC2(input, EV_KEY, BTN_TOUCH, value > a + ((b - a) >> 3));
	}

	if (usage->hid == (HID_UP_PID | 0x83UL)) { /* Simultaneous Effects Max */
		FUNC1("Maximum Effects - %d\n",value);
		return;
	}

	if (usage->hid == (HID_UP_PID | 0x7fUL)) {
		FUNC1("PID Pool Report\n");
		return;
	}

	if ((usage->type == EV_KEY) && (usage->code == 0)) /* Key 0 is "unassigned", not KEY_UNKNOWN */
		return;

	if ((usage->type == EV_ABS) && (field->flags & HID_MAIN_ITEM_RELATIVE) &&
			(usage->code == ABS_VOLUME)) {
		int count = FUNC0(value);
		int direction = value > 0 ? KEY_VOLUMEUP : KEY_VOLUMEDOWN;
		int i;

		for (i = 0; i < count; i++) {
			FUNC2(input, EV_KEY, direction, 1);
			FUNC3(input);
			FUNC2(input, EV_KEY, direction, 0);
			FUNC3(input);
		}
		return;
	}

	/* report the usage code as scancode if the key status has changed */
	if (usage->type == EV_KEY && !!FUNC4(usage->code, input->key) != value)
		FUNC2(input, EV_MSC, MSC_SCAN, usage->hid);

	FUNC2(input, usage->type, usage->code, value);

	if ((field->flags & HID_MAIN_ITEM_RELATIVE) && (usage->type == EV_KEY))
		FUNC2(input, usage->type, usage->code, 0);
}