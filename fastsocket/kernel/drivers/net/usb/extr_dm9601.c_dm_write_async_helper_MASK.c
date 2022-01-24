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
 int /*<<< orphan*/  DM_WRITE_REG ; 
 int /*<<< orphan*/  DM_WRITE_REGS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  dm_write_async_callback ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ctrlrequest*) ; 
 struct usb_ctrlrequest* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct usbnet *dev, u8 reg, u8 value,
				  u16 length, void *data)
{
	struct usb_ctrlrequest *req;
	struct urb *urb;
	int status;

	urb = FUNC4(0, GFP_ATOMIC);
	if (!urb) {
		FUNC1(dev, "Error allocating URB in dm_write_async_helper!");
		return;
	}

	req = FUNC3(sizeof(struct usb_ctrlrequest), GFP_ATOMIC);
	if (!req) {
		FUNC1(dev, "Failed to allocate memory for control request");
		FUNC6(urb);
		return;
	}

	req->bRequestType = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
	req->bRequest = length ? DM_WRITE_REGS : DM_WRITE_REG;
	req->wValue = FUNC0(value);
	req->wIndex = FUNC0(reg);
	req->wLength = FUNC0(length);

	FUNC5(urb, dev->udev,
			     FUNC7(dev->udev, 0),
			     (void *)req, data, length,
			     dm_write_async_callback, req);

	status = FUNC8(urb, GFP_ATOMIC);
	if (status < 0) {
		FUNC1(dev, "Error submitting the control message: status=%d",
		       status);
		FUNC2(req);
		FUNC6(urb);
	}
}