#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  frame_num; } ;
struct uvd {int curframe; TYPE_2__ stats; int /*<<< orphan*/  dp; TYPE_1__* dev; scalar_t__ user_data; } ;
struct usbvideo_frame {int curline; int seqRead_Length; int /*<<< orphan*/  frameState; scalar_t__ data; int /*<<< orphan*/  scanstate; } ;
struct konicawc {int maxline; int yplanesz; int lastframe; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FrameState_Done_Hold ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ScanState_Lines ; 
 int /*<<< orphan*/  ScanState_Scanning ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int,int) ; 

__attribute__((used)) static void FUNC7(struct uvd *uvd, struct usbvideo_frame *frame)
{
	struct konicawc *cam = (struct konicawc *)uvd->user_data;
	int maxline = cam->maxline;
	int yplanesz = cam->yplanesz;

	FUNC5(frame != NULL);

	FUNC0(5, "maxline = %d yplanesz = %d", maxline, yplanesz);
	FUNC0(3, "Frame state = %d", frame->scanstate);

	if(frame->scanstate == ScanState_Scanning) {
		int drop = 0;
		int curframe;
		int fdrops = 0;
		FUNC0(3, "Searching for marker, queue len = %d", FUNC4(&uvd->dp));
		while(FUNC4(&uvd->dp) >= 4) {
			if ((FUNC2(&uvd->dp, 0) == 0x00) &&
			    (FUNC2(&uvd->dp, 1) == 0xff) &&
			    (FUNC2(&uvd->dp, 2) == 0x00) &&
			    (FUNC2(&uvd->dp, 3) < 0x80)) {
				curframe = FUNC2(&uvd->dp, 3);
				if(cam->lastframe >= 0) {
					fdrops = (0x80 + curframe - cam->lastframe) & 0x7F;
					fdrops--;
					if(fdrops) {
						FUNC6(&uvd->dev->dev,
							 "Dropped %d frames "
							 "(%d -> %d)\n",
							 fdrops,
							 cam->lastframe,
							 curframe);
					}
				}
				cam->lastframe = curframe;
				frame->curline = 0;
				frame->scanstate = ScanState_Lines;
				FUNC1(&uvd->dp, 4);
				break;
			}
			FUNC1(&uvd->dp, 1);
			drop++;
		}
		if(drop)
			FUNC0(2, "dropped %d bytes looking for new frame", drop);
	}

	if(frame->scanstate == ScanState_Scanning)
		return;

	/* Try to move data from queue into frame buffer
	 * We get data in blocks of 384 bytes made up of:
	 * 256 Y, 64 U, 64 V.
	 * This needs to be written out as a Y plane, a U plane and a V plane.
	 */

	while ( frame->curline < maxline && (FUNC4(&uvd->dp) >= 384)) {
		/* Y */
		FUNC3(&uvd->dp, frame->data + (frame->curline * 256), 256);
		/* U */
		FUNC3(&uvd->dp, frame->data + yplanesz + (frame->curline * 64), 64);
		/* V */
		FUNC3(&uvd->dp, frame->data + (5 * yplanesz)/4 + (frame->curline * 64), 64);
		frame->seqRead_Length += 384;
		frame->curline++;
	}
	/* See if we filled the frame */
	if (frame->curline == maxline) {
		FUNC0(5, "got whole frame");

		frame->frameState = FrameState_Done_Hold;
		frame->curline = 0;
		uvd->curframe = -1;
		uvd->stats.frame_num++;
	}
}