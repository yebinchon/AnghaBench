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
struct uvc_device {int /*<<< orphan*/  state; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct TYPE_3__ {scalar_t__ bInterfaceSubClass; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVC_DEV_DISCONNECTED ; 
 scalar_t__ UVC_SC_VIDEOSTREAMING ; 
 struct uvc_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_device*) ; 

__attribute__((used)) static void FUNC3(struct usb_interface *intf)
{
	struct uvc_device *dev = FUNC0(intf);

	/* Set the USB interface data to NULL. This can be done outside the
	 * lock, as there's no other reader.
	 */
	FUNC1(intf, NULL);

	if (intf->cur_altsetting->desc.bInterfaceSubClass ==
	    UVC_SC_VIDEOSTREAMING)
		return;

	dev->state |= UVC_DEV_DISCONNECTED;

	FUNC2(dev);
}