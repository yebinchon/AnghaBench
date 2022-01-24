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
struct input_dev {int* evbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  absbit; int /*<<< orphan*/  mscbit; int /*<<< orphan*/  relbit; } ;
struct hid_usage {int dummy; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int product; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_0 ; 
 int /*<<< orphan*/  BTN_1 ; 
 int /*<<< orphan*/  BTN_2 ; 
 int /*<<< orphan*/  BTN_3 ; 
 int /*<<< orphan*/  BTN_4 ; 
 int /*<<< orphan*/  BTN_5 ; 
 int /*<<< orphan*/  BTN_6 ; 
 int /*<<< orphan*/  BTN_7 ; 
 int /*<<< orphan*/  BTN_8 ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_MOUSE ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
#define  USB_DEVICE_ID_WACOM_GRAPHIRE_BLUETOOTH 129 
#define  USB_DEVICE_ID_WACOM_INTUOS4_BLUETOOTH 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev, struct hid_input *hi,
	struct hid_field *field, struct hid_usage *usage, unsigned long **bit,
								int *max)
{
	struct input_dev *input = hi->input;

	/* Basics */
	input->evbit[0] |= FUNC0(EV_KEY) | FUNC0(EV_ABS) | FUNC0(EV_REL);

	FUNC1(REL_WHEEL, input->relbit);

	FUNC1(BTN_TOOL_PEN, input->keybit);
	FUNC1(BTN_TOUCH, input->keybit);
	FUNC1(BTN_STYLUS, input->keybit);
	FUNC1(BTN_STYLUS2, input->keybit);
	FUNC1(BTN_LEFT, input->keybit);
	FUNC1(BTN_RIGHT, input->keybit);
	FUNC1(BTN_MIDDLE, input->keybit);

	/* Pad */
	input->evbit[0] |= FUNC0(EV_MSC);

	FUNC1(MSC_SERIAL, input->mscbit);

	FUNC1(BTN_0, input->keybit);
	FUNC1(BTN_1, input->keybit);
	FUNC1(BTN_TOOL_FINGER, input->keybit);

	/* Distance, rubber and mouse */
	FUNC1(BTN_TOOL_RUBBER, input->keybit);
	FUNC1(BTN_TOOL_MOUSE, input->keybit);

	switch (hdev->product) {
	case USB_DEVICE_ID_WACOM_GRAPHIRE_BLUETOOTH:
		FUNC2(input, ABS_X, 0, 16704, 4, 0);
		FUNC2(input, ABS_Y, 0, 12064, 4, 0);
		FUNC2(input, ABS_PRESSURE, 0, 511, 0, 0);
		FUNC2(input, ABS_DISTANCE, 0, 32, 0, 0);
		break;
	case USB_DEVICE_ID_WACOM_INTUOS4_BLUETOOTH:
		FUNC1(ABS_MISC, input->absbit);
		FUNC1(BTN_2, input->keybit);
		FUNC1(BTN_3, input->keybit);
		FUNC1(BTN_4, input->keybit);
		FUNC1(BTN_5, input->keybit);
		FUNC1(BTN_6, input->keybit);
		FUNC1(BTN_7, input->keybit);
		FUNC1(BTN_8, input->keybit);
		FUNC2(input, ABS_X, 0, 40640, 4, 0);
		FUNC2(input, ABS_Y, 0, 25400, 4, 0);
		FUNC2(input, ABS_PRESSURE, 0, 2047, 0, 0);
		FUNC2(input, ABS_DISTANCE, 0, 63, 0, 0);
		break;
	}

	return 0;
}