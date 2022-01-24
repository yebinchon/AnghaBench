#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {TYPE_1__* udev; } ;
struct usb_ctrlrequest {void* wLength; void* wIndex; scalar_t__ wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct urb {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MCS7830_WR_BMREQ ; 
 int /*<<< orphan*/  MCS7830_WR_BREQ ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ctrlrequest*) ; 
 struct usb_ctrlrequest* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcs7830_async_cmd_callback ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,TYPE_1__*,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct usbnet *dev, u16 index, u16 size, void *data)
{
	struct usb_ctrlrequest *req;
	int ret;
	struct urb *urb;

	urb = FUNC5(0, GFP_ATOMIC);
	if (!urb) {
		FUNC1(&dev->udev->dev,
			"Error allocating URB in write_cmd_async!\n");
		return;
	}

	req = FUNC4(sizeof *req, GFP_ATOMIC);
	if (!req) {
		FUNC2(&dev->udev->dev,
			"Failed to allocate memory for control request\n");
		goto out;
	}
	req->bRequestType = MCS7830_WR_BMREQ;
	req->bRequest = MCS7830_WR_BREQ;
	req->wValue = 0;
	req->wIndex = FUNC0(index);
	req->wLength = FUNC0(size);

	FUNC6(urb, dev->udev,
			     FUNC8(dev->udev, 0),
			     (void *)req, data, size,
			     mcs7830_async_cmd_callback, req);

	ret = FUNC9(urb, GFP_ATOMIC);
	if (ret < 0) {
		FUNC2(&dev->udev->dev,
			"Error submitting the control message: ret=%d\n", ret);
		goto out;
	}
	return;
out:
	FUNC3(req);
	FUNC7(urb);
}