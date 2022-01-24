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
struct wacom_wac {int /*<<< orphan*/ * shared; } ;
struct wacom_usbdev_data {int /*<<< orphan*/  shared; int /*<<< orphan*/  list; struct usb_device* dev; int /*<<< orphan*/  kref; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wacom_usbdev_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct wacom_usbdev_data* FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  wacom_udev_list ; 
 int /*<<< orphan*/  wacom_udev_list_lock ; 

__attribute__((used)) static int FUNC6(struct wacom_wac *wacom,
				 struct usb_device *dev)
{
	struct wacom_usbdev_data *data;
	int retval = 0;

	FUNC3(&wacom_udev_list_lock);

	data = FUNC5(dev);
	if (!data) {
		data = FUNC1(sizeof(struct wacom_usbdev_data), GFP_KERNEL);
		if (!data) {
			retval = -ENOMEM;
			goto out;
		}

		FUNC0(&data->kref);
		data->dev = dev;
		FUNC2(&data->list, &wacom_udev_list);
	}

	wacom->shared = &data->shared;

out:
	FUNC4(&wacom_udev_list_lock);
	return retval;
}