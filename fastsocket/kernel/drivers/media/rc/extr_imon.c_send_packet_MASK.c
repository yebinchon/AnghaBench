#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_ctrlrequest {int bRequestType; int bRequest; void* wLength; void* wIndex; void* wValue; } ;
struct TYPE_7__ {int busy; int status; int /*<<< orphan*/  finished; } ;
struct imon_context {TYPE_2__ tx; int /*<<< orphan*/  lock; TYPE_3__* tx_urb; int /*<<< orphan*/  usb_tx_buf; int /*<<< orphan*/  usbdev_intf0; TYPE_1__* tx_endpoint; int /*<<< orphan*/  tx_control; } ;
struct TYPE_8__ {scalar_t__ actual_length; } ;
struct TYPE_6__ {int bInterval; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ctrlrequest*) ; 
 struct usb_ctrlrequest* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int,unsigned char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct imon_context*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct imon_context*,int) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_tx_callback ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct imon_context *ictx)
{
	unsigned int pipe;
	unsigned long timeout;
	int interval = 0;
	int retval = 0;
	struct usb_ctrlrequest *control_req = NULL;

	/* Check if we need to use control or interrupt urb */
	if (!ictx->tx_control) {
		pipe = FUNC14(ictx->usbdev_intf0,
				      ictx->tx_endpoint->bEndpointAddress);
		interval = ictx->tx_endpoint->bInterval;

		FUNC12(ictx->tx_urb, ictx->usbdev_intf0, pipe,
				 ictx->usb_tx_buf,
				 sizeof(ictx->usb_tx_buf),
				 usb_tx_callback, ictx, interval);

		ictx->tx_urb->actual_length = 0;
	} else {
		/* fill request into kmalloc'ed space: */
		control_req = FUNC3(sizeof(struct usb_ctrlrequest),
				      GFP_KERNEL);
		if (control_req == NULL)
			return -ENOMEM;

		/* setup packet is '21 09 0200 0001 0008' */
		control_req->bRequestType = 0x21;
		control_req->bRequest = 0x09;
		control_req->wValue = FUNC0(0x0200);
		control_req->wIndex = FUNC0(0x0001);
		control_req->wLength = FUNC0(0x0008);

		/* control pipe is endpoint 0x00 */
		pipe = FUNC13(ictx->usbdev_intf0, 0);

		/* build the control urb */
		FUNC11(ictx->tx_urb, ictx->usbdev_intf0,
				     pipe, (unsigned char *)control_req,
				     ictx->usb_tx_buf,
				     sizeof(ictx->usb_tx_buf),
				     usb_tx_callback, ictx);
		ictx->tx_urb->actual_length = 0;
	}

	FUNC1(&ictx->tx.finished);
	ictx->tx.busy = true;
	FUNC10(); /* ensure later readers know we're busy */

	retval = FUNC15(ictx->tx_urb, GFP_KERNEL);
	if (retval) {
		ictx->tx.busy = false;
		FUNC10(); /* ensure later readers know we're not busy */
		FUNC7("error submitting urb(%d)\n", retval);
	} else {
		/* Wait for transmission to complete (or abort) */
		FUNC6(&ictx->lock);
		retval = FUNC16(
				&ictx->tx.finished);
		if (retval)
			FUNC7("task interrupted\n");
		FUNC5(&ictx->lock);

		retval = ictx->tx.status;
		if (retval)
			FUNC7("packet tx failed (%d)\n", retval);
	}

	FUNC2(control_req);

	/*
	 * Induce a mandatory 5ms delay before returning, as otherwise,
	 * send_packet can get called so rapidly as to overwhelm the device,
	 * particularly on faster systems and/or those with quirky usb.
	 */
	timeout = FUNC4(5);
	FUNC9(TASK_UNINTERRUPTIBLE);
	FUNC8(timeout);

	return retval;
}