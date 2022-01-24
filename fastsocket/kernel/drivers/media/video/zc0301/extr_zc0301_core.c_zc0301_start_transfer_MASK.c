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
struct zc0301_device {scalar_t__* transfer_buffer; struct urb** urb; int /*<<< orphan*/ * frame_current; struct usb_device* usbdev; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct usb_device {int dummy; } ;
struct urb {unsigned int number_of_packets; unsigned int transfer_buffer_length; int interval; TYPE_3__* iso_frame_desc; scalar_t__ transfer_buffer; int /*<<< orphan*/  complete; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  pipe; struct zc0301_device* context; struct usb_device* dev; } ;
typedef  size_t s8 ;
struct TYPE_6__ {unsigned int offset; unsigned int length; } ;
struct TYPE_4__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int /*<<< orphan*/  ZC0301_ALTERNATE_SETTING ; 
 unsigned int const ZC0301_ISO_PACKETS ; 
 size_t ZC0301_URBS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned int const,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (unsigned int const,int /*<<< orphan*/ ) ; 
 struct usb_host_interface* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int) ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zc0301_urb_complete ; 

__attribute__((used)) static int FUNC12(struct zc0301_device* cam)
{
	struct usb_device *udev = cam->usbdev;
	struct usb_host_interface* altsetting = FUNC5(
						     FUNC7(udev, 0),
						     ZC0301_ALTERNATE_SETTING);
	const unsigned int psz = FUNC3(altsetting->
					     endpoint[0].desc.wMaxPacketSize);
	struct urb* urb;
	s8 i, j;
	int err = 0;

	for (i = 0; i < ZC0301_URBS; i++) {
		cam->transfer_buffer[i] = FUNC2(ZC0301_ISO_PACKETS * psz,
						  GFP_KERNEL);
		if (!cam->transfer_buffer[i]) {
			err = -ENOMEM;
			FUNC0(1, "Not enough memory");
			goto free_buffers;
		}
	}

	for (i = 0; i < ZC0301_URBS; i++) {
		urb = FUNC4(ZC0301_ISO_PACKETS, GFP_KERNEL);
		cam->urb[i] = urb;
		if (!urb) {
			err = -ENOMEM;
			FUNC0(1, "usb_alloc_urb() failed");
			goto free_urbs;
		}
		urb->dev = udev;
		urb->context = cam;
		urb->pipe = FUNC9(udev, 1);
		urb->transfer_flags = URB_ISO_ASAP;
		urb->number_of_packets = ZC0301_ISO_PACKETS;
		urb->complete = zc0301_urb_complete;
		urb->transfer_buffer = cam->transfer_buffer[i];
		urb->transfer_buffer_length = psz * ZC0301_ISO_PACKETS;
		urb->interval = 1;
		for (j = 0; j < ZC0301_ISO_PACKETS; j++) {
			urb->iso_frame_desc[j].offset = psz * j;
			urb->iso_frame_desc[j].length = psz;
		}
	}

	err = FUNC10(udev, 0, ZC0301_ALTERNATE_SETTING);
	if (err) {
		FUNC0(1, "usb_set_interface() failed");
		goto free_urbs;
	}

	cam->frame_current = NULL;

	for (i = 0; i < ZC0301_URBS; i++) {
		err = FUNC11(cam->urb[i], GFP_KERNEL);
		if (err) {
			for (j = i-1; j >= 0; j--)
				FUNC8(cam->urb[j]);
			FUNC0(1, "usb_submit_urb() failed, error %d", err);
			goto free_urbs;
		}
	}

	return 0;

free_urbs:
	for (i = 0; (i < ZC0301_URBS) && cam->urb[i]; i++)
		FUNC6(cam->urb[i]);

free_buffers:
	for (i = 0; (i < ZC0301_URBS) && cam->transfer_buffer[i]; i++)
		FUNC1(cam->transfer_buffer[i]);

	return err;
}