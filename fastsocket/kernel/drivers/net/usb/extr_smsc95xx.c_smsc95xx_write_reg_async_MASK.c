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
typedef  int /*<<< orphan*/  u32 ;
typedef  int const u16 ;
struct usbnet {int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int bRequestType; int wValue; void* wLength; void* wIndex; int /*<<< orphan*/  bRequest; } ;
struct usb_context {TYPE_1__ req; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  USB_VENDOR_REQUEST_WRITE_REGISTER ; 
 void* FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_context*) ; 
 struct usb_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsc95xx_async_cmd_callback ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct usbnet *dev, u16 index, u32 *data)
{
	struct usb_context *usb_context;
	int status;
	struct urb *urb;
	const u16 size = 4;

	urb = FUNC4(0, GFP_ATOMIC);
	if (!urb) {
		FUNC1(dev, "Error allocating URB");
		return -ENOMEM;
	}

	usb_context = FUNC3(sizeof(struct usb_context), GFP_ATOMIC);
	if (usb_context == NULL) {
		FUNC1(dev, "Error allocating control msg");
		FUNC6(urb);
		return -ENOMEM;
	}

	usb_context->req.bRequestType =
		USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
	usb_context->req.bRequest = USB_VENDOR_REQUEST_WRITE_REGISTER;
	usb_context->req.wValue = 00;
	usb_context->req.wIndex = FUNC0(index);
	usb_context->req.wLength = FUNC0(size);

	FUNC5(urb, dev->udev, FUNC7(dev->udev, 0),
		(void *)&usb_context->req, data, size,
		smsc95xx_async_cmd_callback,
		(void *)usb_context);

	status = FUNC8(urb, GFP_ATOMIC);
	if (status < 0) {
		FUNC1(dev, "Error submitting control msg, sts=%d", status);
		FUNC2(usb_context);
		FUNC6(urb);
	}

	return status;
}