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
struct wacom_features {scalar_t__ type; int /*<<< orphan*/  device_type; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {struct usb_host_interface* endpoint; } ;
struct hid_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  HID_DEVICET_HID ; 
 int /*<<< orphan*/  HID_DEVICET_REPORT ; 
 scalar_t__ TABLETPC ; 
 scalar_t__ TABLETPC2FG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct usb_host_interface*,int /*<<< orphan*/ ,struct hid_descriptor**) ; 
 int FUNC2 (struct usb_interface*,struct hid_descriptor*,struct wacom_features*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf,
		struct wacom_features *features)
{
	int error = 0;
	struct usb_host_interface *interface = intf->cur_altsetting;
	struct hid_descriptor *hid_desc;

	/* default device to penabled */
	features->device_type = BTN_TOOL_PEN;

	/* only Tablet PCs and Bamboo P&T need to retrieve the info */
	if ((features->type != TABLETPC) && (features->type != TABLETPC2FG))
		goto out;

	if (FUNC1(interface, HID_DEVICET_HID, &hid_desc)) {
		if (FUNC1(&interface->endpoint[0],
				HID_DEVICET_REPORT, &hid_desc)) {
			FUNC0("wacom: can not retrieve extra class descriptor\n");
			error = 1;
			goto out;
		}
	}
	error = FUNC2(intf, hid_desc, features);
	if (error)
		goto out;

 out:
	return error;
}