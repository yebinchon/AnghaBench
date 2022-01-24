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
struct usb_ov511 {int maxwidth; int maxheight; size_t curframe; int minwidth; int minheight; struct ov511_frame* frame; TYPE_1__* dev; scalar_t__ packet_numbering; } ;
struct timeval {int dummy; } ;
struct ov511_frame {scalar_t__ scanstate; int bytes_recvd; int rawwidth; int width; int rawheight; int height; scalar_t__ grabstate; int snapshot; int compressed; scalar_t__ rawdata; int /*<<< orphan*/  framenum; int /*<<< orphan*/  wq; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FRAME_DONE ; 
 scalar_t__ FRAME_GRABBING ; 
 scalar_t__ FRAME_READY ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int OV511_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 scalar_t__ STATE_LINES ; 
 scalar_t__ STATE_SCANNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 
 int dumppix ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned char*,int) ; 
 scalar_t__ printph ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC8(struct usb_ov511 *ov, unsigned char *in, int n)
{
	int max_raw = FUNC1(ov->maxwidth, ov->maxheight);
	struct ov511_frame *frame = &ov->frame[ov->curframe];
	struct timeval *ts;

	/* Don't copy the packet number byte */
	if (ov->packet_numbering)
		--n;

	/* A false positive here is likely, until OVT gives me
	 * the definitive SOF/EOF format */
	if ((!(in[0] | in[1] | in[2] | in[3] | in[5])) && in[6]) {
		if (printph) {
			FUNC4(&ov->dev->dev,
				 "ph: %2x %2x %2x %2x %2x %2x %2x %2x\n",
				 in[0], in[1], in[2], in[3], in[4], in[5],
				 in[6], in[7]);
		}

		if (frame->scanstate == STATE_LINES) {
			FUNC2(4, "Detected frame end/start");
			goto eof;
		} else { //scanstate == STATE_SCANNING
			/* Frame start */
			FUNC2(4, "Frame start, framenum = %d", ov->curframe);
			goto sof;
		}
	} else {
		goto check_middle;
	}

eof:
	ts = (struct timeval *)(frame->data
	      + FUNC0(ov->maxwidth, ov->maxheight));
	FUNC5(ts);

	FUNC2(4, "Frame end, curframe = %d, hw=%d, vw=%d, recvd=%d",
		ov->curframe,
		(int)(in[9]), (int)(in[10]), frame->bytes_recvd);

	// FIXME: Since we don't know the header formats yet,
	// there is no way to know what the actual image size is
	frame->rawwidth = frame->width;
	frame->rawheight = frame->height;

	/* Validate the header data */
	FUNC3(frame->rawwidth, ov->minwidth, ov->maxwidth);
	FUNC3(frame->rawheight, ov->minheight, ov->maxheight);

	/* Don't allow byte count to exceed buffer size */
	FUNC3(frame->bytes_recvd, 8, max_raw);

	if (frame->scanstate == STATE_LINES) {
		int nextf;

		frame->grabstate = FRAME_DONE;
		FUNC7(&frame->wq);

		/* If next frame is ready or grabbing,
		 * point to it */
		nextf = (ov->curframe + 1) % OV511_NUMFRAMES;
		if (ov->frame[nextf].grabstate == FRAME_READY
		    || ov->frame[nextf].grabstate == FRAME_GRABBING) {
			ov->curframe = nextf;
			ov->frame[nextf].scanstate = STATE_SCANNING;
			frame = &ov->frame[nextf];
		} else {
			if (frame->grabstate == FRAME_DONE) {
				FUNC2(4, "** Frame done **");
			} else {
				FUNC2(4, "Frame not ready? state = %d",
				       ov->frame[nextf].grabstate);
			}

			ov->curframe = -1;
			FUNC2(4, "SOF dropped (no active frame)");
			return;  /* Nowhere to store this frame */
		}
	}
sof:
	FUNC2(4, "Starting capture on frame %d", frame->framenum);

// Snapshot not reverse-engineered yet.
#if 0
	/* Check to see if it's a snapshot frame */
	/* FIXME?? Should the snapshot reset go here? Performance? */
	if (in[8] & 0x02) {
		frame->snapshot = 1;
		PDEBUG(3, "snapshot detected");
	}
#endif
	frame->scanstate = STATE_LINES;
	frame->bytes_recvd = 0;
	frame->compressed = 1;

check_middle:
	/* Are we in a frame? */
	if (frame->scanstate != STATE_LINES) {
		FUNC2(4, "scanstate: no SOF yet");
		return;
	}

	/* Dump all data exactly as received */
	if (dumppix == 2) {
		frame->bytes_recvd += n;
		if (frame->bytes_recvd <= max_raw)
			FUNC6(frame->rawdata + frame->bytes_recvd - n, in, n);
		else
			FUNC2(3, "Raw data buffer overrun!! (%d)",
				frame->bytes_recvd - max_raw);
	} else {
		/* All incoming data are divided into 8-byte segments. If the
		 * segment contains all zero bytes, it must be skipped. These
		 * zero-segments allow the OV518 to mainain a constant data rate
		 * regardless of the effectiveness of the compression. Segments
		 * are aligned relative to the beginning of each isochronous
		 * packet. The first segment in each image is a header (the
		 * decompressor skips it later).
		 */

		int b, read = 0, allzero, copied = 0;

		while (read < n) {
			allzero = 1;
			for (b = 0; b < 8; b++) {
				if (in[read + b]) {
					allzero = 0;
					break;
				}
			}

			if (allzero) {
			/* Don't copy it */
			} else {
				if (frame->bytes_recvd + copied + 8 <= max_raw)
				{
					FUNC6(frame->rawdata
						+ frame->bytes_recvd + copied,
						in + read, 8);
					copied += 8;
				} else {
					FUNC2(3, "Raw data buffer overrun!!");
				}
			}
			read += 8;
		}
		frame->bytes_recvd += copied;
	}
}