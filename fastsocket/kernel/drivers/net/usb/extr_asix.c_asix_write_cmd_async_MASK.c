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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int /*<<< orphan*/  udev; } ;
struct usb_ctrlrequest {int bRequestType; void* wLength; void* wIndex; void* wValue; int /*<<< orphan*/  bRequest; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  asix_async_cmd_callback ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ctrlrequest*) ; 
 struct usb_ctrlrequest* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct usbnet *dev, u8 cmd, u16 value, u16 index,
				    u16 size, void *data)
{
	struct usb_ctrlrequest *req;
	int status;
	struct urb *urb;

	FUNC1(dev,"asix_write_cmd_async() cmd=0x%02x value=0x%04x index=0x%04x size=%d",
		cmd, value, index, size);
	if ((urb = FUNC5(0, GFP_ATOMIC)) == NULL) {
		FUNC2(dev, "Error allocating URB in write_cmd_async!");
		return;
	}

	if ((req = FUNC4(sizeof(struct usb_ctrlrequest), GFP_ATOMIC)) == NULL) {
		FUNC2(dev, "Failed to allocate memory for control request");
		FUNC7(urb);
		return;
	}

	req->bRequestType = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
	req->bRequest = cmd;
	req->wValue = FUNC0(value);
	req->wIndex = FUNC0(index);
	req->wLength = FUNC0(size);

	FUNC6(urb, dev->udev,
			     FUNC8(dev->udev, 0),
			     (void *)req, data, size,
			     asix_async_cmd_callback, req);

	if((status = FUNC9(urb, GFP_ATOMIC)) < 0) {
		FUNC2(dev, "Error submitting the control message: status=%d",
				status);
		FUNC3(req);
		FUNC7(urb);
	}
}