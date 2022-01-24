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
struct zd_usb_interrupt {int /*<<< orphan*/  lock; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  buffer_dma; struct urb* urb; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  USB_MAX_EP_INT_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct zd_usb*) ; 
 struct usb_device* FUNC7 (struct zd_usb*) ; 

void FUNC8(struct zd_usb *usb)
{
	unsigned long flags;
	struct usb_device *udev = FUNC7(usb);
	struct zd_usb_interrupt *intr = &usb->intr;
	struct urb *urb;
	void *buffer;
	dma_addr_t buffer_dma;

	FUNC1(&intr->lock, flags);
	urb = intr->urb;
	if (!urb) {
		FUNC2(&intr->lock, flags);
		return;
	}
	intr->urb = NULL;
	buffer = intr->buffer;
	buffer_dma = intr->buffer_dma;
	intr->buffer = NULL;
	FUNC2(&intr->lock, flags);

	FUNC5(urb);
	FUNC0(FUNC6(usb), "urb %p killed\n", urb);
	FUNC4(urb);

	if (buffer)
		FUNC3(udev, USB_MAX_EP_INT_BUFFER,
				  buffer, buffer_dma);
}