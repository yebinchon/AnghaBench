#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct urb {int interval; int transfer_buffer_length; int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ start_frame; struct stk_camera* context; int /*<<< orphan*/  complete; TYPE_2__* transfer_buffer; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  pipe; struct usb_device* dev; } ;
struct stk_camera {TYPE_2__* isobufs; int /*<<< orphan*/  isoc_ep; struct usb_device* udev; } ;
struct TYPE_4__ {struct urb* urb; struct TYPE_4__* data; } ;
struct TYPE_3__ {int offset; int length; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ISO_BUFFER_SIZE ; 
 int ISO_FRAMES_PER_DESC ; 
 int ISO_MAX_FRAME_SIZE ; 
 int MAX_ISO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*) ; 
 int /*<<< orphan*/  stk_isoc_handler ; 
 struct urb* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct stk_camera *dev)
{
	void *kbuf;
	int i, j;
	struct urb *urb;
	struct usb_device *udev;

	if (dev == NULL)
		return -ENXIO;
	udev = dev->udev;

	if (dev->isobufs)
		FUNC0("isobufs already allocated. Bad\n");
	else
		dev->isobufs = FUNC2(MAX_ISO_BUFS * sizeof(*dev->isobufs),
					GFP_KERNEL);
	if (dev->isobufs == NULL) {
		FUNC0("Unable to allocate iso buffers\n");
		return -ENOMEM;
	}
	for (i = 0; i < MAX_ISO_BUFS; i++) {
		if (dev->isobufs[i].data == NULL) {
			kbuf = FUNC2(ISO_BUFFER_SIZE, GFP_KERNEL);
			if (kbuf == NULL) {
				FUNC0("Failed to allocate iso buffer %d\n",
					i);
				goto isobufs_out;
			}
			dev->isobufs[i].data = kbuf;
		} else
			FUNC0("isobuf data already allocated\n");
		if (dev->isobufs[i].urb == NULL) {
			urb = FUNC4(ISO_FRAMES_PER_DESC, GFP_KERNEL);
			if (urb == NULL) {
				FUNC0("Failed to allocate URB %d\n", i);
				goto isobufs_out;
			}
			dev->isobufs[i].urb = urb;
		} else {
			FUNC0("Killing URB\n");
			FUNC6(dev->isobufs[i].urb);
			urb = dev->isobufs[i].urb;
		}
		urb->interval = 1;
		urb->dev = udev;
		urb->pipe = FUNC7(udev, dev->isoc_ep);
		urb->transfer_flags = URB_ISO_ASAP;
		urb->transfer_buffer = dev->isobufs[i].data;
		urb->transfer_buffer_length = ISO_BUFFER_SIZE;
		urb->complete = stk_isoc_handler;
		urb->context = dev;
		urb->start_frame = 0;
		urb->number_of_packets = ISO_FRAMES_PER_DESC;

		for (j = 0; j < ISO_FRAMES_PER_DESC; j++) {
			urb->iso_frame_desc[j].offset = j * ISO_MAX_FRAME_SIZE;
			urb->iso_frame_desc[j].length = ISO_MAX_FRAME_SIZE;
		}
	}
	FUNC3(dev);
	return 0;

isobufs_out:
	for (i = 0; i < MAX_ISO_BUFS && dev->isobufs[i].data; i++)
		FUNC1(dev->isobufs[i].data);
	for (i = 0; i < MAX_ISO_BUFS && dev->isobufs[i].urb; i++)
		FUNC5(dev->isobufs[i].urb);
	FUNC1(dev->isobufs);
	dev->isobufs = NULL;
	return -ENOMEM;
}