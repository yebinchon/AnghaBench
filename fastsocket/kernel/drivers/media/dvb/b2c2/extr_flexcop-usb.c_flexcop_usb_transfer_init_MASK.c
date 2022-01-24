#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct urb {int interval; int number_of_packets; int transfer_buffer_length; TYPE_5__* iso_frame_desc; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  pipe; int /*<<< orphan*/  complete; struct flexcop_usb* context; int /*<<< orphan*/  dev; } ;
struct flexcop_usb {int buffer_size; int /*<<< orphan*/  fc_dev; struct urb** iso_urb; int /*<<< orphan*/ * iso_buffer; int /*<<< orphan*/  udev; int /*<<< orphan*/  dma_addr; TYPE_4__* uintf; } ;
struct TYPE_10__ {int offset; int length; } ;
struct TYPE_9__ {TYPE_3__* cur_altsetting; } ;
struct TYPE_8__ {TYPE_2__* endpoint; } ;
struct TYPE_6__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2C2_USB_DATA_PIPE ; 
 int B2C2_USB_FRAMES_PER_ISO ; 
 int B2C2_USB_NUM_ISO_URB ; 
 int ENOMEM ; 
 int FC_SRAM_DEST_CAI ; 
 int FC_SRAM_DEST_CAO ; 
 int FC_SRAM_DEST_MEDIA ; 
 int FC_SRAM_DEST_NET ; 
 int /*<<< orphan*/  FC_SRAM_DEST_TARGET_WAN_USB ; 
 int /*<<< orphan*/  FC_WAN_SPEED_8MBITS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flexcop_usb*) ; 
 int /*<<< orphan*/  flexcop_usb_urb_complete ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct urb* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct flexcop_usb *fc_usb)
{
	u16 frame_size = FUNC6(
		fc_usb->uintf->cur_altsetting->endpoint[0].desc.wMaxPacketSize);
	int bufsize = B2C2_USB_NUM_ISO_URB * B2C2_USB_FRAMES_PER_ISO *
		frame_size, i, j, ret;
	int buffer_offset = 0;

	FUNC0("creating %d iso-urbs with %d frames "
			"each of %d bytes size = %d.\n", B2C2_USB_NUM_ISO_URB,
			B2C2_USB_FRAMES_PER_ISO, frame_size, bufsize);

	fc_usb->iso_buffer = FUNC8(NULL,
			bufsize, &fc_usb->dma_addr);
	if (fc_usb->iso_buffer == NULL)
		return -ENOMEM;

	FUNC7(fc_usb->iso_buffer, 0, bufsize);
	fc_usb->buffer_size = bufsize;

	/* creating iso urbs */
	for (i = 0; i < B2C2_USB_NUM_ISO_URB; i++) {
		fc_usb->iso_urb[i] = FUNC9(B2C2_USB_FRAMES_PER_ISO,
			GFP_ATOMIC);
		if (fc_usb->iso_urb[i] == NULL) {
			ret = -ENOMEM;
			goto urb_error;
		}
	}

	/* initialising and submitting iso urbs */
	for (i = 0; i < B2C2_USB_NUM_ISO_URB; i++) {
		int frame_offset = 0;
		struct urb *urb = fc_usb->iso_urb[i];
		FUNC0("initializing and submitting urb no. %d "
			"(buf_offset: %d).\n", i, buffer_offset);

		urb->dev = fc_usb->udev;
		urb->context = fc_usb;
		urb->complete = flexcop_usb_urb_complete;
		urb->pipe = B2C2_USB_DATA_PIPE;
		urb->transfer_flags = URB_ISO_ASAP;
		urb->interval = 1;
		urb->number_of_packets = B2C2_USB_FRAMES_PER_ISO;
		urb->transfer_buffer_length = frame_size * B2C2_USB_FRAMES_PER_ISO;
		urb->transfer_buffer = fc_usb->iso_buffer + buffer_offset;

		buffer_offset += frame_size * B2C2_USB_FRAMES_PER_ISO;
		for (j = 0; j < B2C2_USB_FRAMES_PER_ISO; j++) {
			FUNC0("urb no: %d, frame: %d, frame_offset: %d\n",
					i, j, frame_offset);
			urb->iso_frame_desc[j].offset = frame_offset;
			urb->iso_frame_desc[j].length = frame_size;
			frame_offset += frame_size;
		}

		if ((ret = FUNC10(fc_usb->iso_urb[i],GFP_ATOMIC))) {
			FUNC1("submitting urb %d failed with %d.", i, ret);
			goto urb_error;
		}
		FUNC0("submitted urb no. %d.\n",i);
	}

	/* SRAM */
	FUNC3(fc_usb->fc_dev, FC_SRAM_DEST_MEDIA |
			FC_SRAM_DEST_NET | FC_SRAM_DEST_CAO | FC_SRAM_DEST_CAI,
			FC_SRAM_DEST_TARGET_WAN_USB);
	FUNC5(fc_usb->fc_dev, FC_WAN_SPEED_8MBITS);
	FUNC2(fc_usb->fc_dev, 1, 1, 1);
	return 0;

urb_error:
	FUNC4(fc_usb);
	return ret;
}