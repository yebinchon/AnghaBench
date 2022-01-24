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
struct usb_interface {scalar_t__ num_altsetting; } ;
struct TYPE_2__ {int /*<<< orphan*/  bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/ * adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FRIIO_BULK_ALTSETTING ; 
 scalar_t__ GL861_ALTSETTING_COUNT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct usb_interface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dvb_usb_device**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  friio_properties ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 struct usb_host_interface* FUNC4 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf,
		       const struct usb_device_id *id)
{
	struct dvb_usb_device *d;
	struct usb_host_interface *alt;
	int ret;

	if (intf->num_altsetting < GL861_ALTSETTING_COUNT)
		return -ENODEV;

	alt = FUNC4(intf, FRIIO_BULK_ALTSETTING);
	if (alt == NULL) {
		FUNC0("not alt found!\n");
		return -ENODEV;
	}
	ret = FUNC5(FUNC3(intf),
				alt->desc.bInterfaceNumber,
				alt->desc.bAlternateSetting);
	if (ret != 0) {
		FUNC0("failed to set alt-setting!\n");
		return ret;
	}

	ret = FUNC1(intf, &friio_properties,
				  THIS_MODULE, &d, adapter_nr);
	if (ret == 0)
		FUNC2(&d->adapter[0], 1);

	return ret;
}