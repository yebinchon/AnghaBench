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
struct usb_stv {int streaming; int maxframesize; TYPE_3__* scratch; TYPE_2__* sbuf; struct urb** urb; scalar_t__ framecount; int /*<<< orphan*/  rawbufsize; int /*<<< orphan*/  bulk_in_endpointAddr; int /*<<< orphan*/  udev; scalar_t__ scratch_overflow; scalar_t__ scratch_use; scalar_t__ scratch_next; TYPE_1__* frame; scalar_t__ fbuf; } ;
struct urb {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {scalar_t__ curpix; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_UNUSED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int STV680_NUMFRAMES ; 
 int STV680_NUMSBUF ; 
 int STV680_NUMSCRATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stv680_video_irq ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_stv*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9 (struct usb_stv *stv680)
{
	struct urb *urb;
	int err = 0, i;

	stv680->streaming = 1;

	/* Do some memory allocation */
	for (i = 0; i < STV680_NUMFRAMES; i++) {
		stv680->frame[i].data = stv680->fbuf + i * stv680->maxframesize;
		stv680->frame[i].curpix = 0;
	}
	/* packet size = 4096  */
	for (i = 0; i < STV680_NUMSBUF; i++) {
		stv680->sbuf[i].data = FUNC2 (stv680->rawbufsize, GFP_KERNEL);
		if (stv680->sbuf[i].data == NULL) {
			FUNC0 (0, "STV(e): Could not kmalloc raw data buffer %i", i);
			goto nomem_err;
		}
	}

	stv680->scratch_next = 0;
	stv680->scratch_use = 0;
	stv680->scratch_overflow = 0;
	for (i = 0; i < STV680_NUMSCRATCH; i++) {
		stv680->scratch[i].data = FUNC2 (stv680->rawbufsize, GFP_KERNEL);
		if (stv680->scratch[i].data == NULL) {
			FUNC0 (0, "STV(e): Could not kmalloc raw scratch buffer %i", i);
			goto nomem_err;
		}
		stv680->scratch[i].state = BUFFER_UNUSED;
	}

	for (i = 0; i < STV680_NUMSBUF; i++) {
		urb = FUNC3 (0, GFP_KERNEL);
		if (!urb)
			goto nomem_err;

		/* sbuf is urb->transfer_buffer, later gets memcpyed to scratch */
		FUNC4 (urb, stv680->udev,
				   FUNC7 (stv680->udev, stv680->bulk_in_endpointAddr),
				   stv680->sbuf[i].data, stv680->rawbufsize,
				   stv680_video_irq, stv680);
		stv680->urb[i] = urb;
		err = FUNC8 (stv680->urb[i], GFP_KERNEL);
		if (err) {
			FUNC0 (0, "STV(e): urb burned down with err "
				   "%d in start stream %d", err, i);
			goto nomem_err;
		}
	}			/* i STV680_NUMSBUF */

	stv680->framecount = 0;
	return 0;

 nomem_err:
	for (i = 0; i < STV680_NUMSBUF; i++) {
		FUNC6(stv680->urb[i]);
		FUNC5(stv680->urb[i]);
		stv680->urb[i] = NULL;
		FUNC1(stv680->sbuf[i].data);
		stv680->sbuf[i].data = NULL;
	}
	/* used in irq, free only as all URBs are dead */
	for (i = 0; i < STV680_NUMSCRATCH; i++) {
		FUNC1(stv680->scratch[i].data);
		stv680->scratch[i].data = NULL;
	}
	return -ENOMEM;

}