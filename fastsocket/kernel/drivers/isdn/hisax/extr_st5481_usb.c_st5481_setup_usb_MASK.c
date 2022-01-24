#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {int dummy; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; void* wMaxPacketSize; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct st5481_intr {struct urb* urb; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  f; } ;
struct st5481_ctrl {TYPE_2__ msg_fifo; struct urb* urb; } ;
struct st5481_adapter {struct st5481_intr intr; struct st5481_ctrl ctrl; struct usb_device* usb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EP_INT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_PKT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_host_interface* FUNC7 (struct usb_interface*,int) ; 
 int /*<<< orphan*/  usb_ctrl_complete ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct st5481_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct st5481_adapter*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_int_complete ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct usb_device*) ; 
 int FUNC13 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC15(struct st5481_adapter *adapter)
{
	struct usb_device *dev = adapter->usb_dev;
	struct st5481_ctrl *ctrl = &adapter->ctrl;
	struct st5481_intr *intr = &adapter->intr;
	struct usb_interface *intf;
	struct usb_host_interface *altsetting = NULL;
	struct usb_host_endpoint *endpoint;
	int status;
	struct urb *urb;
	u8 *buf;
	
	FUNC1(2,"");
	
	if ((status = FUNC12 (dev)) < 0) {
		FUNC2("reset_configuration failed,status=%d",status);
		return status;
	}

	intf = FUNC10(dev, 0);
	if (intf)
		altsetting = FUNC7(intf, 3);
	if (!altsetting)
		return -ENXIO;

	// Check if the config is sane
	if ( altsetting->desc.bNumEndpoints != 7 ) {
		FUNC2("expecting 7 got %d endpoints!", altsetting->desc.bNumEndpoints);
		return -EINVAL;
	}

	// The descriptor is wrong for some early samples of the ST5481 chip
	altsetting->endpoint[3].desc.wMaxPacketSize = FUNC3(32);
	altsetting->endpoint[4].desc.wMaxPacketSize = FUNC3(32);

	// Use alternative setting 3 on interface 0 to have 2B+D
	if ((status = FUNC13 (dev, 0, 3)) < 0) {
		FUNC2("usb_set_interface failed,status=%d",status);
		return status;
	}

	// Allocate URB for control endpoint
	urb = FUNC6(0, GFP_KERNEL);
	if (!urb) {
		return -ENOMEM;
	}
	ctrl->urb = urb;
	
	// Fill the control URB
	FUNC8 (urb, dev, 
			  FUNC14(dev, 0),
			  NULL, NULL, 0, usb_ctrl_complete, adapter);

		
	FUNC4(&ctrl->msg_fifo.f, FUNC0(ctrl->msg_fifo.data));

	// Allocate URBs and buffers for interrupt endpoint
	urb = FUNC6(0, GFP_KERNEL);
	if (!urb) { 
		return -ENOMEM;
	}
	intr->urb = urb;
	
	buf = FUNC5(INT_PKT_SIZE, GFP_KERNEL);
	if (!buf) {
		return -ENOMEM;
	}

	endpoint = &altsetting->endpoint[EP_INT-1];
				
	// Fill the interrupt URB
	FUNC9(urb, dev,
		     FUNC11(dev, endpoint->desc.bEndpointAddress),
		     buf, INT_PKT_SIZE,
		     usb_int_complete, adapter,
		     endpoint->desc.bInterval);
		
	return 0;
}