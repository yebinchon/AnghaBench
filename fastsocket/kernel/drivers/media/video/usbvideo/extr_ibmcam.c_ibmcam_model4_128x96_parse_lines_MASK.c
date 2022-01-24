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
struct uvd {int debug; TYPE_1__* dev; int /*<<< orphan*/  dp; } ;
struct usbvideo_frame {int curline; int /*<<< orphan*/  request; int /*<<< orphan*/  deinterlace; } ;
typedef  int /*<<< orphan*/  lineBuffer ;
typedef  enum ParseState { ____Placeholder_ParseState } ParseState ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Deinterlace_None ; 
 int FLAGS_MONOCHROME ; 
 int /*<<< orphan*/  FUNC0 (struct usbvideo_frame*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int V4L_BYTES_PER_PIXEL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int flags ; 
 int scan_Continue ; 
 int scan_NextFrame ; 
 int scan_Out ; 

__attribute__((used)) static enum ParseState FUNC7(
	struct uvd *uvd,
	struct usbvideo_frame *frame,
	long *pcopylen)
{
	const unsigned char *data_rv, *data_gv, *data_bv;
	unsigned int len;
	int i, v4l_linesize; /* V4L line offset */
	const int data_w=128, data_h=96;
	static unsigned char lineBuffer[128*5];

	v4l_linesize = FUNC3(frame->request) * V4L_BYTES_PER_PIXEL;

	/*
	 * Make sure that our writing into output buffer
	 * will not exceed the buffer. Note that we may write
	 * not into current output scanline but in several after
	 * it as well (if we enlarge image vertically.)
	 */
	if ((frame->curline + 1) >= data_h) {
		if (uvd->debug >= 3)
			FUNC6(&uvd->dev->dev,
				 "Reached line %d. (frame is done)\n",
				 frame->curline);
		return scan_NextFrame;
	}

	/*
	 * RGRGRG .... RGRG_____________B?B?B? ... B?B?____________
	 * <---- 128*2 ---><---- 64 ---><--- 128*2 ---><--- 64 --->
	 */

	/* Make sure there's enough data for the entire line */
	len = 5 * data_w;
	FUNC5(len <= sizeof(lineBuffer));

	/* Make sure there's enough data for the entire line */
	if (FUNC2(&uvd->dp) < len)
		return scan_Out;

	/* Suck one line out of the ring queue */
	FUNC1(&uvd->dp, lineBuffer, len);

	data_rv = lineBuffer;
	data_gv = lineBuffer + 1;
	data_bv = lineBuffer + data_w*2 + data_w/2;
	for (i = 0; i < FUNC3(frame->request); i++) {
		int rv, gv, bv;	/* RGB components */
		if (i < data_w) {
			const int j = i * 2;
			gv = data_rv[j];
			rv = data_gv[j];
			bv = data_bv[j];
			if (flags & FLAGS_MONOCHROME) {
				unsigned long y;
				y = rv + gv + bv;
				y /= 3;
				if (y > 0xFF)
					y = 0xFF;
				rv = gv = bv = (unsigned char) y;
			}
		} else {
			rv = gv = bv = 0;
		}
		FUNC0(frame, i, frame->curline, rv, gv, bv);
	}
	frame->deinterlace = Deinterlace_None;
	frame->curline++;
	*pcopylen += v4l_linesize;

	if (frame->curline >= FUNC4(frame->request)) {
		if (uvd->debug >= 3) {
			FUNC6(&uvd->dev->dev,
				 "All requested lines (%ld.) done.\n",
				 FUNC4(frame->request));
		}
		return scan_NextFrame;
	} else
		return scan_Continue;
}