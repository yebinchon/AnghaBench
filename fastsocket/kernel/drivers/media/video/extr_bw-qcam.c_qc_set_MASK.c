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
struct qcam_device {int brightness; int height; int transfer_scale; int port_mode; int bpp; int width; int top; int left; int contrast; int whitebal; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int QC_BIDIR ; 
 int QC_MODE_MASK ; 
 int /*<<< orphan*/  QC_PARAM_CHANGE ; 
 int QC_UNIDIR ; 
 int /*<<< orphan*/  FUNC1 (struct qcam_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcam_device*) ; 

__attribute__((used)) static void FUNC3(struct qcam_device *q)
{
	int val;
	int val2;

	FUNC2(q);

	/* Set the brightness.  Yes, this is repetitive, but it works.
	 * Shorter versions seem to fail subtly.  Feel free to try :-). */
	/* I think the problem was in qc_command, not here -- bls */

	FUNC1(q, 0xb);
	FUNC1(q, q->brightness);

	val = q->height / q->transfer_scale;
	FUNC1(q, 0x11);
	FUNC1(q, val);
	if ((q->port_mode & QC_MODE_MASK) == QC_UNIDIR && q->bpp == 6) {
		/* The normal "transfers per line" calculation doesn't seem to work
		   as expected here (and yet it works fine in qc_scan).  No idea
		   why this case is the odd man out.  Fortunately, Laird's original
		   working version gives me a good way to guess at working values.
		   -- bls */
		val = q->width;
		val2 = q->transfer_scale * 4;
	} else {
		val = q->width * q->bpp;
		val2 = (((q->port_mode & QC_MODE_MASK) == QC_BIDIR) ? 24 : 8) *
		    q->transfer_scale;
	}
	val = FUNC0(val, val2);
	FUNC1(q, 0x13);
	FUNC1(q, val);

	/* Setting top and left -- bls */
	FUNC1(q, 0xd);
	FUNC1(q, q->top);
	FUNC1(q, 0xf);
	FUNC1(q, q->left / 2);

	FUNC1(q, 0x19);
	FUNC1(q, q->contrast);
	FUNC1(q, 0x1f);
	FUNC1(q, q->whitebal);

	/* Clear flag that we must update the grabbing parameters on the camera
	   before we grab the next frame */
	q->status &= (~QC_PARAM_CHANGE);
}