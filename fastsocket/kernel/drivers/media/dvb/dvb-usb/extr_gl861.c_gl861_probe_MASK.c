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
struct usb_interface {int num_altsetting; } ;
struct TYPE_2__ {int /*<<< orphan*/  bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct usb_interface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dvb_usb_device**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gl861_properties ; 
 struct usb_host_interface* FUNC2 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf,
		       const struct usb_device_id *id)
{
	struct dvb_usb_device *d;
	struct usb_host_interface *alt;
	int ret;

	if (intf->num_altsetting < 2)
		return -ENODEV;

	ret = FUNC1(intf, &gl861_properties, THIS_MODULE, &d,
				  adapter_nr);
	if (ret == 0) {
		alt = FUNC2(intf, 0);

		if (alt == NULL) {
			FUNC0("not alt found!\n");
			return -ENODEV;
		}

		ret = FUNC3(d->udev, alt->desc.bInterfaceNumber,
					alt->desc.bAlternateSetting);
	}

	return ret;
}