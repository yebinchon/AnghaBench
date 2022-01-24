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
struct usbnet {int frame_errors; int /*<<< orphan*/  udev; } ;
struct usb_ctrlrequest {int bRequestType; void* wLength; void* wIndex; void* wValue; int /*<<< orphan*/  bRequest; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int REG_USBCTL ; 
 int /*<<< orphan*/  REQUEST_REGISTER ; 
 int USBCTL_FLUSH_OTHER ; 
 int USBCTL_FLUSH_THIS ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ctrlrequest*) ; 
 struct usb_ctrlrequest* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nc_flush_complete ; 
 scalar_t__ FUNC4 (struct usbnet*) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct usbnet *dev)
{
	dev->frame_errors++;
	if (dev->frame_errors > 5) {
		struct urb		*urb;
		struct usb_ctrlrequest	*req;
		int			status;

		/* Send a flush */
		urb = FUNC5(0, GFP_ATOMIC);
		if (!urb)
			return;

		req = FUNC3(sizeof *req, GFP_ATOMIC);
		if (!req) {
			FUNC7(urb);
			return;
		}

		req->bRequestType = USB_DIR_OUT
			| USB_TYPE_VENDOR
			| USB_RECIP_DEVICE;
		req->bRequest = REQUEST_REGISTER;
		req->wValue = FUNC0(USBCTL_FLUSH_THIS
				| USBCTL_FLUSH_OTHER);
		req->wIndex = FUNC0(REG_USBCTL);
		req->wLength = FUNC0(0);

		/* queue an async control request, we don't need
		 * to do anything when it finishes except clean up.
		 */
		FUNC6(urb, dev->udev,
			FUNC8(dev->udev, 0),
			(unsigned char *) req,
			NULL, 0,
			nc_flush_complete, req);
		status = FUNC9(urb, GFP_ATOMIC);
		if (status) {
			FUNC2(req);
			FUNC7(urb);
			return;
		}

		if (FUNC4(dev))
			FUNC1(dev, "flush net1080; too many framing errors");
		dev->frame_errors = 0;
	}
}