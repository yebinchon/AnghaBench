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
struct TYPE_3__ {int /*<<< orphan*/  frame_num; } ;
struct uvd {scalar_t__ videosize; int curframe; int /*<<< orphan*/  max_frame_size; TYPE_1__ stats; int /*<<< orphan*/  dp; } ;
struct usbvideo_frame {scalar_t__ scanstate; long seqRead_Length; int /*<<< orphan*/  frameState; int /*<<< orphan*/  data; int /*<<< orphan*/  flags; } ;
typedef  enum ParseState { ____Placeholder_ParseState } ParseState ;
struct TYPE_4__ {int camera_model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FrameState_Done ; 
 int /*<<< orphan*/  FrameState_Ready ; 
 int IBMCAM_MODEL_2 ; 
 int IBMCAM_MODEL_3 ; 
 int IBMCAM_MODEL_4 ; 
 TYPE_2__* FUNC0 (struct uvd*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ScanState_Lines ; 
 scalar_t__ ScanState_Scanning ; 
 int /*<<< orphan*/  USBVIDEO_FRAME_FLAG_SOFTWARE_CONTRAST ; 
 scalar_t__ VIDEOSIZE_128x96 ; 
 scalar_t__ VIDEOSIZE_320x240 ; 
 scalar_t__ VIDEOSIZE_352x240 ; 
 scalar_t__ VIDEOSIZE_352x288 ; 
 int FUNC2 (struct uvd*) ; 
 int FUNC3 (struct uvd*,struct usbvideo_frame*,long*) ; 
 int FUNC4 (struct uvd*,struct usbvideo_frame*,long*) ; 
 int FUNC5 (struct uvd*,struct usbvideo_frame*,long*) ; 
 int FUNC6 (struct uvd*,struct usbvideo_frame*,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int scan_Continue ; 
 int scan_NextFrame ; 
 int scan_Out ; 

__attribute__((used)) static void FUNC8(struct uvd *uvd,
				   struct usbvideo_frame *frame)
{
	enum ParseState newstate;
	long copylen = 0;
	int mod = FUNC0(uvd)->camera_model;

	while (1) {
		newstate = scan_Out;
		if (FUNC1(&uvd->dp) > 0) {
			if (frame->scanstate == ScanState_Scanning) {
				newstate = FUNC2(uvd);
			} else if (frame->scanstate == ScanState_Lines) {
				if ((mod == IBMCAM_MODEL_2) &&
				    ((uvd->videosize == VIDEOSIZE_352x288) ||
				     (uvd->videosize == VIDEOSIZE_320x240) ||
				     (uvd->videosize == VIDEOSIZE_352x240)))
				{
					newstate = FUNC3(
						uvd, frame, &copylen);
				} else if (mod == IBMCAM_MODEL_4) {
					/*
					 * Model 4 cameras (IBM NetCamera) use Model 2 decoder (RGB)
					 * for 320x240 and above; 160x120 and 176x144 uses Model 1
					 * decoder (YUV), and 128x96 mode uses ???
					 */
					if ((uvd->videosize == VIDEOSIZE_352x288) ||
					    (uvd->videosize == VIDEOSIZE_320x240) ||
					    (uvd->videosize == VIDEOSIZE_352x240))
					{
						newstate = FUNC3(uvd, frame, &copylen);
					} else if (uvd->videosize == VIDEOSIZE_128x96) {
						newstate = FUNC5(uvd, frame, &copylen);
					} else {
						newstate = FUNC6(uvd, frame, &copylen);
					}
				} else if (mod == IBMCAM_MODEL_3) {
					newstate = FUNC4(uvd, frame, &copylen);
				} else {
					newstate = FUNC6(uvd, frame, &copylen);
				}
			}
		}
		if (newstate == scan_Continue)
			continue;
		else if ((newstate == scan_NextFrame) || (newstate == scan_Out))
			break;
		else
			return; /* scan_EndParse */
	}

	if (newstate == scan_NextFrame) {
		frame->frameState = FrameState_Done;
		uvd->curframe = -1;
		uvd->stats.frame_num++;
		if ((mod == IBMCAM_MODEL_2) || (mod == IBMCAM_MODEL_4)) {
			/* Need software contrast adjustment for those cameras */
			frame->flags |= USBVIDEO_FRAME_FLAG_SOFTWARE_CONTRAST;
		}
	}

	/* Update the frame's uncompressed length. */
	frame->seqRead_Length += copylen;

#if 0
	{
		static unsigned char j=0;
		memset(frame->data, j++, uvd->max_frame_size);
		frame->frameState = FrameState_Ready;
	}
#endif
}