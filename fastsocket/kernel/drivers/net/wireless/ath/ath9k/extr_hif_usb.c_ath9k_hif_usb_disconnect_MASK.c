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
struct usb_interface {int dummy; } ;
struct usb_device {scalar_t__ state; int /*<<< orphan*/  dev; } ;
struct hif_device_usb {int flags; int /*<<< orphan*/  htc_handle; int /*<<< orphan*/  fw_done; } ;

/* Variables and functions */
 int HIF_USB_READY ; 
 scalar_t__ USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct hif_device_usb*) ; 
 struct hif_device_usb* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *interface)
{
	struct usb_device *udev = FUNC5(interface);
	struct hif_device_usb *hif_dev = FUNC7(interface);
	bool unplugged = (udev->state == USB_STATE_NOTATTACHED) ? true : false;

	if (!hif_dev)
		return;

	FUNC10(&hif_dev->fw_done);

	if (hif_dev->flags & HIF_USB_READY) {
		FUNC2(hif_dev->htc_handle, unplugged);
		FUNC3(hif_dev->htc_handle);
		FUNC0(hif_dev);
	}

	FUNC9(interface, NULL);

	/* If firmware was loaded we should drop it
	 * go back to first stage bootloader. */
	if (!unplugged && (hif_dev->flags & HIF_USB_READY))
		FUNC1(udev);

	FUNC6(hif_dev);
	FUNC4(&udev->dev, "ath9k_htc: USB layer deinitialized\n");
	FUNC8(udev);
}