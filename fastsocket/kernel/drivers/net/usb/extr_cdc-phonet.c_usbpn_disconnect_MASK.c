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
struct usbpn_dev {int disconnected; int /*<<< orphan*/  dev; struct usb_interface* intf; struct usb_interface* data_intf; struct usb_device* usb; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 struct usbpn_dev* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  usbpn_driver ; 

__attribute__((used)) static void FUNC4(struct usb_interface *intf)
{
	struct usbpn_dev *pnd = FUNC2(intf);
	struct usb_device *usb = pnd->usb;

	if (pnd->disconnected)
		return;

	pnd->disconnected = 1;
	FUNC1(&usbpn_driver,
			(pnd->intf == intf) ? pnd->data_intf : pnd->intf);
	FUNC0(pnd->dev);
	FUNC3(usb);
}