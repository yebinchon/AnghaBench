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
struct usb_ov511 {scalar_t__ curframe; scalar_t__ bclass; int bridge; scalar_t__ dev; int /*<<< orphan*/  wq; int /*<<< orphan*/  streaming; int /*<<< orphan*/  user; } ;
struct urb {int number_of_packets; unsigned char* transfer_buffer; scalar_t__ dev; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  status; struct ov511_sbuf* context; } ;
struct ov511_sbuf {int /*<<< orphan*/  n; struct usb_ov511* ov; } ;
struct TYPE_2__ {int actual_length; int status; int offset; } ;

/* Variables and functions */
 scalar_t__ BCL_OV511 ; 
 scalar_t__ BCL_OV518 ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ov511*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ov511*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  urb_errlist ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct urb *urb)
{
	int i;
	struct usb_ov511 *ov;
	struct ov511_sbuf *sbuf;

	if (!urb->context) {
		FUNC0(4, "no context");
		return;
	}

	sbuf = urb->context;
	ov = sbuf->ov;

	if (!ov || !ov->dev || !ov->user) {
		FUNC0(4, "no device, or not open");
		return;
	}

	if (!ov->streaming) {
		FUNC0(4, "hmmm... not streaming, but got interrupt");
		return;
	}

	if (urb->status == -ENOENT || urb->status == -ECONNRESET) {
		FUNC0(4, "URB unlinked");
		return;
	}

	if (urb->status != -EINPROGRESS && urb->status != 0) {
		FUNC1("ERROR: urb->status=%d: %s", urb->status,
		    FUNC4(urb_errlist, urb->status));
	}

	/* Copy the data received into our frame buffer */
	FUNC0(5, "sbuf[%d]: Moving %d packets", sbuf->n,
	       urb->number_of_packets);
	for (i = 0; i < urb->number_of_packets; i++) {
		/* Warning: Don't call *_move_data() if no frame active! */
		if (ov->curframe >= 0) {
			int n = urb->iso_frame_desc[i].actual_length;
			int st = urb->iso_frame_desc[i].status;
			unsigned char *cdata;

			urb->iso_frame_desc[i].actual_length = 0;
			urb->iso_frame_desc[i].status = 0;

			cdata = urb->transfer_buffer
				+ urb->iso_frame_desc[i].offset;

			if (!n) {
				FUNC0(4, "Zero-length packet");
				continue;
			}

			if (st)
				FUNC0(2, "data error: [%d] len=%d, status=%d",
				       i, n, st);

			if (ov->bclass == BCL_OV511)
				FUNC2(ov, cdata, n);
			else if (ov->bclass == BCL_OV518)
				FUNC3(ov, cdata, n);
			else
				FUNC1("Unknown bridge device (%d)", ov->bridge);

		} else if (FUNC6(&ov->wq)) {
			FUNC7(&ov->wq);
		}
	}

	/* Resubmit this URB */
	urb->dev = ov->dev;
	if ((i = FUNC5(urb, GFP_ATOMIC)) != 0)
		FUNC1("usb_submit_urb() ret %d", i);

	return;
}