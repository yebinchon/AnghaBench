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
struct usbhid_device {TYPE_2__* intf; } ;
struct hiddev {int exist; struct hid_device* hid; int /*<<< orphan*/  existancelock; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  wait; } ;
struct hid_device {unsigned int maxcollection; size_t minor; struct hiddev* hiddev; TYPE_1__* collection; struct usbhid_device* driver_data; } ;
struct TYPE_4__ {size_t minor; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t HIDDEV_MINOR_BASE ; 
 scalar_t__ HID_COLLECTION_APPLICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  hiddev_class ; 
 struct hiddev** hiddev_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hiddev*) ; 
 struct hiddev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC11(struct hid_device *hid, unsigned int force)
{
	struct hiddev *hiddev;
	struct usbhid_device *usbhid = hid->driver_data;
	int retval;

	if (!force) {
		unsigned int i;
		for (i = 0; i < hid->maxcollection; i++)
			if (hid->collection[i].type ==
			    HID_COLLECTION_APPLICATION &&
			    !FUNC1(hid->collection[i].usage))
				break;

		if (i == hid->maxcollection)
			return -1;
	}

	if (!(hiddev = FUNC5(sizeof(struct hiddev), GFP_KERNEL)))
		return -1;

	FUNC3(&hiddev->wait);
	FUNC0(&hiddev->list);
	FUNC8(&hiddev->list_lock);
	FUNC7(&hiddev->existancelock);
	hid->hiddev = hiddev;
	hiddev->hid = hid;
	hiddev->exist = 1;

	/* when lock_kernel() usage is fixed in usb_open(),
	 * we could also fix it here */
	FUNC6();
	retval = FUNC10(usbhid->intf, &hiddev_class);
	if (retval) {
		FUNC2("Not able to get a minor for this device.");
		hid->hiddev = NULL;
		FUNC9();
		FUNC4(hiddev);
		return -1;
	} else {
		hid->minor = usbhid->intf->minor;
		hiddev_table[usbhid->intf->minor - HIDDEV_MINOR_BASE] = hiddev;
	}
	FUNC9();

	return 0;
}