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
struct uvd {int curframe; int last_error; int video_endp; int streaming; TYPE_4__* sbuf; int /*<<< orphan*/  ifaceAltActive; int /*<<< orphan*/  iface; scalar_t__ user_data; struct usb_device* dev; } ;
struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct usb_device {int dummy; } ;
struct urb {int interval; int number_of_packets; int transfer_buffer_length; TYPE_3__* iso_frame_desc; void* complete; int /*<<< orphan*/  transfer_buffer; void* transfer_flags; void* pipe; struct uvd* context; struct usb_device* dev; } ;
struct konicawc {size_t speed; struct urb** sts_urb; int /*<<< orphan*/ * last_data_urb; int /*<<< orphan*/ * sts_buf; } ;
struct TYPE_8__ {struct urb* urb; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int offset; int length; } ;
struct TYPE_5__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int EBUSY ; 
 int EFAULT ; 
 int ENXIO ; 
 int FRAMES_PER_DESC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* URB_ISO_ASAP ; 
 int USBVIDEO_NUMSBUF ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct uvd*) ; 
 void* konicawc_isoc_irq ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * spd_to_iface ; 
 struct usb_host_interface* FUNC5 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct usb_device*,int) ; 
 int FUNC8 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct uvd *uvd)
{
	struct usb_device *dev = uvd->dev;
	int i, errFlag;
	struct konicawc *cam = (struct konicawc *)uvd->user_data;
	int pktsz;
	struct usb_interface *intf;
	struct usb_host_interface *interface = NULL;

	intf = FUNC6(dev, uvd->iface);
	if (intf)
		interface = FUNC5(intf,
				spd_to_iface[cam->speed]);
	if (!interface)
		return -ENXIO;
	pktsz = FUNC4(interface->endpoint[1].desc.wMaxPacketSize);
	FUNC1(1, "pktsz = %d", pktsz);
	if (!FUNC0(uvd)) {
		FUNC2("Camera is not operational");
		return -EFAULT;
	}
	uvd->curframe = -1;
	FUNC3(uvd);
	/* Alternate interface 1 is is the biggest frame size */
	i = FUNC8(dev, uvd->iface, uvd->ifaceAltActive);
	if (i < 0) {
		FUNC2("usb_set_interface error");
		uvd->last_error = i;
		return -EBUSY;
	}

	/* We double buffer the Iso lists */
	for (i=0; i < USBVIDEO_NUMSBUF; i++) {
		int j, k;
		struct urb *urb = uvd->sbuf[i].urb;
		urb->dev = dev;
		urb->context = uvd;
		urb->pipe = FUNC7(dev, uvd->video_endp);
		urb->interval = 1;
		urb->transfer_flags = URB_ISO_ASAP;
		urb->transfer_buffer = uvd->sbuf[i].data;
		urb->complete = konicawc_isoc_irq;
		urb->number_of_packets = FRAMES_PER_DESC;
		urb->transfer_buffer_length = pktsz * FRAMES_PER_DESC;
		for (j=k=0; j < FRAMES_PER_DESC; j++, k += pktsz) {
			urb->iso_frame_desc[j].offset = k;
			urb->iso_frame_desc[j].length = pktsz;
		}

		urb = cam->sts_urb[i];
		urb->dev = dev;
		urb->context = uvd;
		urb->pipe = FUNC7(dev, uvd->video_endp-1);
		urb->interval = 1;
		urb->transfer_flags = URB_ISO_ASAP;
		urb->transfer_buffer = cam->sts_buf[i];
		urb->complete = konicawc_isoc_irq;
		urb->number_of_packets = FRAMES_PER_DESC;
		urb->transfer_buffer_length = FRAMES_PER_DESC;
		for (j=0; j < FRAMES_PER_DESC; j++) {
			urb->iso_frame_desc[j].offset = j;
			urb->iso_frame_desc[j].length = 1;
		}
	}

	cam->last_data_urb = NULL;

	/* Submit all URBs */
	for (i=0; i < USBVIDEO_NUMSBUF; i++) {
		errFlag = FUNC9(cam->sts_urb[i], GFP_KERNEL);
		if (errFlag)
			FUNC2("usb_submit_isoc(%d) ret %d", i, errFlag);

		errFlag = FUNC9(uvd->sbuf[i].urb, GFP_KERNEL);
		if (errFlag)
			FUNC2 ("usb_submit_isoc(%d) ret %d", i, errFlag);
	}

	uvd->streaming = 1;
	FUNC1(1, "streaming=1 video_endp=$%02x", uvd->video_endp);
	return 0;
}