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
struct hid_device {int claimed; int /*<<< orphan*/  (* hiddev_disconnect ) (struct hid_device*) ;} ;

/* Variables and functions */
 int HID_CLAIMED_HIDDEV ; 
 int HID_CLAIMED_HIDRAW ; 
 int HID_CLAIMED_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 

void FUNC3(struct hid_device *hdev)
{
	if (hdev->claimed & HID_CLAIMED_INPUT)
		FUNC0(hdev);
	if (hdev->claimed & HID_CLAIMED_HIDDEV)
		hdev->hiddev_disconnect(hdev);
	if (hdev->claimed & HID_CLAIMED_HIDRAW)
		FUNC1(hdev);
}