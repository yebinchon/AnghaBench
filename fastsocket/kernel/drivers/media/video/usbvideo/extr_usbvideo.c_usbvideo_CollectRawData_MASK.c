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
struct TYPE_2__ {int /*<<< orphan*/  frame_num; } ;
struct uvd {int max_frame_size; int curframe; TYPE_1__ stats; int /*<<< orphan*/  dp; } ;
struct usbvideo_frame {int seqRead_Length; int data; int /*<<< orphan*/  frameState; } ;

/* Variables and functions */
 int /*<<< orphan*/  FrameState_Done ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct uvd *uvd, struct usbvideo_frame *frame)
{
	int n;

	FUNC2(uvd != NULL);
	FUNC2(frame != NULL);

	/* Try to move data from queue into frame buffer */
	n = FUNC1(&uvd->dp);
	if (n > 0) {
		int m;
		/* See how much space we have left */
		m = uvd->max_frame_size - frame->seqRead_Length;
		if (n > m)
			n = m;
		/* Now move that much data into frame buffer */
		FUNC0(
			&uvd->dp,
			frame->data + frame->seqRead_Length,
			m);
		frame->seqRead_Length += m;
	}
	/* See if we filled the frame */
	if (frame->seqRead_Length >= uvd->max_frame_size) {
		frame->frameState = FrameState_Done;
		uvd->curframe = -1;
		uvd->stats.frame_num++;
	}
}