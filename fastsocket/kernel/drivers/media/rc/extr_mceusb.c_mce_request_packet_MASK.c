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
typedef  int /*<<< orphan*/  usb_complete_t ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct urb {int transfer_buffer_length; int /*<<< orphan*/  dev; } ;
struct mceusb_dev {int /*<<< orphan*/  usbdev; int /*<<< orphan*/  send_flags; struct urb* urb_in; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MCEUSB_RX ; 
 int MCEUSB_TX ; 
 int /*<<< orphan*/  RECV_FLAG_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mce_async_callback ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,struct mceusb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mceusb_dev *ir,
			       struct usb_endpoint_descriptor *ep,
			       unsigned char *data, int size, int urb_type)
{
	int res;
	struct urb *async_urb;
	struct device *dev = ir->dev;
	unsigned char *async_buf;

	if (urb_type == MCEUSB_TX) {
		async_urb = FUNC5(0, GFP_KERNEL);
		if (FUNC4(!async_urb)) {
			FUNC1(dev, "Error, couldn't allocate urb!\n");
			return;
		}

		async_buf = FUNC2(size, GFP_KERNEL);
		if (!async_buf) {
			FUNC1(dev, "Error, couldn't allocate buf!\n");
			FUNC7(async_urb);
			return;
		}

		/* outbound data */
		FUNC6(async_urb, ir->usbdev,
			FUNC8(ir->usbdev, ep->bEndpointAddress),
			async_buf, size, (usb_complete_t)mce_async_callback,
			ir, ep->bInterval);
		FUNC3(async_buf, data, size);

	} else if (urb_type == MCEUSB_RX) {
		/* standard request */
		async_urb = ir->urb_in;
		ir->send_flags = RECV_FLAG_IN_PROGRESS;

	} else {
		FUNC1(dev, "Error! Unknown urb type %d\n", urb_type);
		return;
	}

	FUNC0(dev, "receive request called (size=%#x)\n", size);

	async_urb->transfer_buffer_length = size;
	async_urb->dev = ir->usbdev;

	res = FUNC9(async_urb, GFP_ATOMIC);
	if (res) {
		FUNC0(dev, "receive request FAILED! (res=%d)\n", res);
		return;
	}
	FUNC0(dev, "receive request complete (res=%d)\n", res);
}