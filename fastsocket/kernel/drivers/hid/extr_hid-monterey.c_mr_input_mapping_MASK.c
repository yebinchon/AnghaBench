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
struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int HID_UP_CONSUMER ; 
 int HID_USAGE ; 
 int HID_USAGE_PAGE ; 
 int /*<<< orphan*/  KEY_PRESENTATION ; 
 int /*<<< orphan*/  KEY_SPREADSHEET ; 
 int /*<<< orphan*/  KEY_STOP ; 
 int /*<<< orphan*/  KEY_WORDPROCESSOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	if ((usage->hid & HID_USAGE_PAGE) != HID_UP_CONSUMER)
		return 0;

	switch (usage->hid & HID_USAGE) {
	case 0x156: FUNC0(KEY_WORDPROCESSOR);	break;
	case 0x157: FUNC0(KEY_SPREADSHEET);		break;
	case 0x158: FUNC0(KEY_PRESENTATION);		break;
	case 0x15c: FUNC0(KEY_STOP);			break;
	default:
		return 0;
	}
	return 1;
}