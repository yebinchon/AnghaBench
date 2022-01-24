#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct usb_device {int dummy; } ;
struct urb {unsigned int number_of_packets; unsigned int transfer_buffer_length; int interval; TYPE_3__* iso_frame_desc; scalar_t__ transfer_buffer; int /*<<< orphan*/  complete; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  pipe; struct sn9c102_device* context; struct usb_device* dev; } ;
struct TYPE_8__ {scalar_t__ bytesread; } ;
struct sn9c102_device {int* reg; scalar_t__* transfer_buffer; struct urb** urb; TYPE_4__ sof; int /*<<< orphan*/ * frame_current; struct usb_device* usbdev; } ;
typedef  size_t s8 ;
struct TYPE_7__ {unsigned int offset; unsigned int length; } ;
struct TYPE_5__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SN9C102_ALTERNATE_SETTING ; 
 unsigned int const SN9C102_ISO_PACKETS ; 
 size_t SN9C102_URBS ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned int const,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sn9c102_urb_complete ; 
 int FUNC4 (struct sn9c102_device*,int,int) ; 
 struct urb* FUNC5 (unsigned int const,int /*<<< orphan*/ ) ; 
 struct usb_host_interface* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int) ; 
 int FUNC11 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sn9c102_device* cam)
{
	struct usb_device *udev = cam->usbdev;
	struct urb* urb;
	struct usb_host_interface* altsetting = FUNC6(
						    FUNC8(udev, 0),
						    SN9C102_ALTERNATE_SETTING);
	const unsigned int psz = FUNC3(altsetting->
					     endpoint[0].desc.wMaxPacketSize);
	s8 i, j;
	int err = 0;

	for (i = 0; i < SN9C102_URBS; i++) {
		cam->transfer_buffer[i] = FUNC2(SN9C102_ISO_PACKETS * psz,
						  GFP_KERNEL);
		if (!cam->transfer_buffer[i]) {
			err = -ENOMEM;
			FUNC0(1, "Not enough memory");
			goto free_buffers;
		}
	}

	for (i = 0; i < SN9C102_URBS; i++) {
		urb = FUNC5(SN9C102_ISO_PACKETS, GFP_KERNEL);
		cam->urb[i] = urb;
		if (!urb) {
			err = -ENOMEM;
			FUNC0(1, "usb_alloc_urb() failed");
			goto free_urbs;
		}
		urb->dev = udev;
		urb->context = cam;
		urb->pipe = FUNC10(udev, 1);
		urb->transfer_flags = URB_ISO_ASAP;
		urb->number_of_packets = SN9C102_ISO_PACKETS;
		urb->complete = sn9c102_urb_complete;
		urb->transfer_buffer = cam->transfer_buffer[i];
		urb->transfer_buffer_length = psz * SN9C102_ISO_PACKETS;
		urb->interval = 1;
		for (j = 0; j < SN9C102_ISO_PACKETS; j++) {
			urb->iso_frame_desc[j].offset = psz * j;
			urb->iso_frame_desc[j].length = psz;
		}
	}

	/* Enable video */
	if (!(cam->reg[0x01] & 0x04)) {
		err = FUNC4(cam, cam->reg[0x01] | 0x04, 0x01);
		if (err) {
			err = -EIO;
			FUNC0(1, "I/O hardware error");
			goto free_urbs;
		}
	}

	err = FUNC11(udev, 0, SN9C102_ALTERNATE_SETTING);
	if (err) {
		FUNC0(1, "usb_set_interface() failed");
		goto free_urbs;
	}

	cam->frame_current = NULL;
	cam->sof.bytesread = 0;

	for (i = 0; i < SN9C102_URBS; i++) {
		err = FUNC12(cam->urb[i], GFP_KERNEL);
		if (err) {
			for (j = i-1; j >= 0; j--)
				FUNC9(cam->urb[j]);
			FUNC0(1, "usb_submit_urb() failed, error %d", err);
			goto free_urbs;
		}
	}

	return 0;

free_urbs:
	for (i = 0; (i < SN9C102_URBS) && cam->urb[i]; i++)
		FUNC7(cam->urb[i]);

free_buffers:
	for (i = 0; (i < SN9C102_URBS) && cam->transfer_buffer[i]; i++)
		FUNC1(cam->transfer_buffer[i]);

	return err;
}