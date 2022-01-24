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
struct hidraw {int minor; } ;
struct hid_device {int bus; int claimed; int minor; unsigned int maxcollection; int version; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; struct hid_collection* collection; scalar_t__ hidraw; int /*<<< orphan*/  (* ff_init ) (struct hid_device*) ;int /*<<< orphan*/  (* hiddev_connect ) (struct hid_device*,unsigned int) ;} ;
struct hid_collection {scalar_t__ type; int usage; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
#define  BUS_BLUETOOTH 129 
#define  BUS_USB 128 
 int ENODEV ; 
 int HID_CLAIMED_HIDDEV ; 
 int HID_CLAIMED_HIDRAW ; 
 int HID_CLAIMED_INPUT ; 
 scalar_t__ HID_COLLECTION_APPLICATION ; 
 unsigned int HID_CONNECT_FF ; 
 unsigned int HID_CONNECT_HIDDEV ; 
 unsigned int HID_CONNECT_HIDDEV_FORCE ; 
 unsigned int HID_CONNECT_HIDINPUT ; 
 unsigned int HID_CONNECT_HIDINPUT_FORCE ; 
 unsigned int HID_CONNECT_HIDRAW ; 
 int HID_UP_GENDESK ; 
 int HID_USAGE_PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char const*,int,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 scalar_t__ FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct hid_device*) ; 

int FUNC9(struct hid_device *hdev, unsigned int connect_mask)
{
	static const char *types[] = { "Device", "Pointer", "Mouse", "Device",
		"Joystick", "Gamepad", "Keyboard", "Keypad",
		"Multi-Axis Controller"
	};
	const char *type, *bus;
	char buf[64];
	unsigned int i;
	int len;

	if (hdev->bus != BUS_USB)
		connect_mask &= ~HID_CONNECT_HIDDEV;
	if (FUNC3(hdev))
		connect_mask |= HID_CONNECT_HIDDEV_FORCE;

	if ((connect_mask & HID_CONNECT_HIDINPUT) && !FUNC4(hdev,
				connect_mask & HID_CONNECT_HIDINPUT_FORCE))
		hdev->claimed |= HID_CLAIMED_INPUT;
	if ((connect_mask & HID_CONNECT_HIDDEV) && hdev->hiddev_connect &&
			!hdev->hiddev_connect(hdev,
				connect_mask & HID_CONNECT_HIDDEV_FORCE))
		hdev->claimed |= HID_CLAIMED_HIDDEV;
	if ((connect_mask & HID_CONNECT_HIDRAW) && !FUNC5(hdev))
		hdev->claimed |= HID_CLAIMED_HIDRAW;

	if (!hdev->claimed) {
		FUNC1(&hdev->dev, "claimed by neither input, hiddev nor "
				"hidraw\n");
		return -ENODEV;
	}

	if ((hdev->claimed & HID_CLAIMED_INPUT) &&
			(connect_mask & HID_CONNECT_FF) && hdev->ff_init)
		hdev->ff_init(hdev);

	len = 0;
	if (hdev->claimed & HID_CLAIMED_INPUT)
		len += FUNC6(buf + len, "input");
	if (hdev->claimed & HID_CLAIMED_HIDDEV)
		len += FUNC6(buf + len, "%shiddev%d", len ? "," : "",
				hdev->minor);
	if (hdev->claimed & HID_CLAIMED_HIDRAW)
		len += FUNC6(buf + len, "%shidraw%d", len ? "," : "",
				((struct hidraw *)hdev->hidraw)->minor);

	type = "Device";
	for (i = 0; i < hdev->maxcollection; i++) {
		struct hid_collection *col = &hdev->collection[i];
		if (col->type == HID_COLLECTION_APPLICATION &&
		   (col->usage & HID_USAGE_PAGE) == HID_UP_GENDESK &&
		   (col->usage & 0xffff) < FUNC0(types)) {
			type = types[col->usage & 0xffff];
			break;
		}
	}

	switch (hdev->bus) {
	case BUS_USB:
		bus = "USB";
		break;
	case BUS_BLUETOOTH:
		bus = "BLUETOOTH";
		break;
	default:
		bus = "<UNKNOWN>";
	}

	FUNC2(&hdev->dev, "%s: %s HID v%x.%02x %s [%s] on %s\n",
			buf, bus, hdev->version >> 8, hdev->version & 0xff,
			type, hdev->name, hdev->phys);

	return 0;
}