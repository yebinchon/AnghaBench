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
struct usbhid_device {int bufsize; void* ctrlbuf; void* cr; void* outbuf; void* inbuf; int /*<<< orphan*/  ctrlbuf_dma; int /*<<< orphan*/  cr_dma; int /*<<< orphan*/  outbuf_dma; int /*<<< orphan*/  inbuf_dma; } ;
struct usb_device {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct usb_device *dev, struct hid_device *hid)
{
	struct usbhid_device *usbhid = hid->driver_data;

	usbhid->inbuf = FUNC0(dev, usbhid->bufsize, GFP_KERNEL,
			&usbhid->inbuf_dma);
	usbhid->outbuf = FUNC0(dev, usbhid->bufsize, GFP_KERNEL,
			&usbhid->outbuf_dma);
	usbhid->cr = FUNC0(dev, sizeof(*usbhid->cr), GFP_KERNEL,
			&usbhid->cr_dma);
	usbhid->ctrlbuf = FUNC0(dev, usbhid->bufsize, GFP_KERNEL,
			&usbhid->ctrlbuf_dma);
	if (!usbhid->inbuf || !usbhid->outbuf || !usbhid->cr ||
			!usbhid->ctrlbuf)
		return -1;

	return 0;
}