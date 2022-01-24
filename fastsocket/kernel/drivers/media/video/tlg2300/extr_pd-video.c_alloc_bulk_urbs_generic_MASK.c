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
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC5(struct urb **urb_array, int num,
			struct usb_device *udev, u8 ep_addr,
			int buf_size, gfp_t gfp_flags,
			usb_complete_t complete_fn, void *context)
{
	int i = 0;

	for (; i < num; i++) {
		void *mem;
		struct urb *urb = FUNC0(0, gfp_flags);
		if (urb == NULL)
			return i;

		mem = FUNC1(udev, buf_size, gfp_flags,
					 &urb->transfer_dma);
		if (mem == NULL) {
			FUNC3(urb);
			return i;
		}

		FUNC2(urb, udev, FUNC4(udev, ep_addr),
				mem, buf_size, complete_fn, context);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		urb_array[i] = urb;
	}
	return i;
}