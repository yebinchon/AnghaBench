#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_stv {int rawbufsize; scalar_t__ nullpackets; size_t scratch_next; scalar_t__ udev; int /*<<< orphan*/  wq; int /*<<< orphan*/  scratch_overflow; TYPE_1__* scratch; int /*<<< orphan*/  dropped; int /*<<< orphan*/  streaming; } ;
struct urb {int actual_length; scalar_t__ dev; scalar_t__ status; scalar_t__ transfer_buffer; struct usb_stv* context; } ;
struct TYPE_2__ {int state; int length; int /*<<< orphan*/  data; } ;

/* Variables and functions */
#define  BUFFER_BUSY 130 
#define  BUFFER_READY 129 
#define  BUFFER_UNUSED 128 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ STV680_MAX_NULLPACKETS ; 
 size_t STV680_NUMSCRATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC2 (struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (struct urb *urb)
{
	struct usb_stv *stv680 = urb->context;
	int length = urb->actual_length;

	if (length < stv680->rawbufsize)
		FUNC0 (2, "STV(i): Lost data in transfer: exp %li, got %i", stv680->rawbufsize, length);

	/* ohoh... */
	if (!stv680->streaming)
		return;

	if (!stv680->udev) {
		FUNC0 (0, "STV(e): device vapourished in video_irq");
		return;
	}

	/* 0 sized packets happen if we are to fast, but sometimes the camera
	   keeps sending them forever...
	 */
	if (length && !urb->status) {
		stv680->nullpackets = 0;
		switch (stv680->scratch[stv680->scratch_next].state) {
		case BUFFER_READY:
		case BUFFER_BUSY:
			stv680->dropped++;
			break;

		case BUFFER_UNUSED:
			FUNC1 (stv680->scratch[stv680->scratch_next].data,
				(unsigned char *) urb->transfer_buffer, length);
			stv680->scratch[stv680->scratch_next].state = BUFFER_READY;
			stv680->scratch[stv680->scratch_next].length = length;
			if (FUNC3 (&stv680->wq)) {
				FUNC4 (&stv680->wq);
			}
			stv680->scratch_overflow = 0;
			stv680->scratch_next++;
			if (stv680->scratch_next >= STV680_NUMSCRATCH)
				stv680->scratch_next = 0;
			break;
		}		/* switch  */
	} else {
		stv680->nullpackets++;
		if (stv680->nullpackets > STV680_MAX_NULLPACKETS) {
			if (FUNC3 (&stv680->wq)) {
				FUNC4 (&stv680->wq);
			}
		}
	}			/*  if - else */

	/* Resubmit urb for new data */
	urb->status = 0;
	urb->dev = stv680->udev;
	if (FUNC2 (urb, GFP_ATOMIC))
		FUNC0 (0, "STV(e): urb burned down in video irq");
	return;
}