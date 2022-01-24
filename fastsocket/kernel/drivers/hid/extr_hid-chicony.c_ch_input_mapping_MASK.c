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
struct hid_usage {int hid; } ;
struct hid_input {TYPE_1__* input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_1 ; 
 int /*<<< orphan*/  BTN_2 ; 
 int /*<<< orphan*/  BTN_3 ; 
 int /*<<< orphan*/  BTN_4 ; 
 int /*<<< orphan*/  BTN_5 ; 
 int /*<<< orphan*/  BTN_6 ; 
 int /*<<< orphan*/  BTN_7 ; 
 int /*<<< orphan*/  BTN_8 ; 
 int /*<<< orphan*/  BTN_9 ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  EV_REP ; 
 int HID_UP_MSVENDOR ; 
 int HID_USAGE ; 
 int HID_USAGE_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	if ((usage->hid & HID_USAGE_PAGE) != HID_UP_MSVENDOR)
		return 0;

	FUNC1(EV_REP, hi->input->evbit);
	switch (usage->hid & HID_USAGE) {
	case 0xff01: FUNC0(BTN_1);	break;
	case 0xff02: FUNC0(BTN_2);	break;
	case 0xff03: FUNC0(BTN_3);	break;
	case 0xff04: FUNC0(BTN_4);	break;
	case 0xff05: FUNC0(BTN_5);	break;
	case 0xff06: FUNC0(BTN_6);	break;
	case 0xff07: FUNC0(BTN_7);	break;
	case 0xff08: FUNC0(BTN_8);	break;
	case 0xff09: FUNC0(BTN_9);	break;
	case 0xff0a: FUNC0(BTN_A);	break;
	case 0xff0b: FUNC0(BTN_B);	break;
	default:
		return 0;
	}
	return 1;
}