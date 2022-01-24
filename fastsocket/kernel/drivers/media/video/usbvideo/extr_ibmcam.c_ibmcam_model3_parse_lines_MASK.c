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
struct TYPE_3__ {int hue; int colour; } ;
struct uvd {int debug; TYPE_2__* dev; int /*<<< orphan*/  dp; TYPE_1__ vpic; } ;
struct usbvideo_frame {int header; int curline; int /*<<< orphan*/  request; int /*<<< orphan*/  deinterlace; } ;
typedef  int /*<<< orphan*/  lineBuffer ;
typedef  enum ParseState { ____Placeholder_ParseState } ParseState ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Deinterlace_None ; 
 int /*<<< orphan*/  FUNC0 (int,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct usbvideo_frame*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int V4L_BYTES_PER_PIXEL ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int hue_correction ; 
 int scan_Continue ; 
 int scan_NextFrame ; 
 int scan_Out ; 

__attribute__((used)) static enum ParseState FUNC10(
	struct uvd *uvd,
	struct usbvideo_frame *frame,
	long *pcopylen)
{
	unsigned char *data;
	const unsigned char *color;
	unsigned int len;
	int v4l_linesize; /* V4L line offset */
	const int hue_corr  = (uvd->vpic.hue - 0x8000) >> 10;	/* -32..+31 */
	const int hue2_corr = (hue_correction - 128) / 4;		/* -32..+31 */
	const int ccm = 128; /* Color correction median - see below */
	int i, u, v, rw, data_w=0, data_h=0, color_corr;
	static unsigned char lineBuffer[640*3];
	int line;

	color_corr = (uvd->vpic.colour - 0x8000) >> 8; /* -128..+127 = -ccm..+(ccm-1)*/
	FUNC0(color_corr, -ccm, ccm+1);

	v4l_linesize = FUNC4(frame->request) * V4L_BYTES_PER_PIXEL;

	/* The header tells us what sort of data is in this frame */
	switch (frame->header) {
		/*
		 * Uncompressed modes (that are easy to decode).
		 */
	case 0x0308:
		data_w = 640;
		data_h = 480;
		break;
	case 0x0208:
		data_w = 320;
		data_h = 240;
		break;
	case 0x020A:
		data_w = 160;
		data_h = 120;
		break;
		/*
		 * Compressed modes (ViCE - that I don't know how to decode).
		 */
	case 0x0328:	/* 640x480, best quality compression */
	case 0x0368:	/* 640x480, best frame rate compression */
	case 0x0228:	/* 320x240, best quality compression */
	case 0x0268:	/* 320x240, best frame rate compression */
	case 0x02CA:	/* 160x120, best quality compression */
	case 0x02EA:	/* 160x120, best frame rate compression */
		/* Do nothing with this - not supported */
		FUNC9("Unsupported mode $%04lx", frame->header);
		return scan_NextFrame;
	default:
		/* Catch unknown headers, may help in learning new headers */
		FUNC9("Strange frame->header=$%08lx", frame->header);
		return scan_NextFrame;
	}

	/*
	 * Make sure that our writing into output buffer
	 * will not exceed the buffer. Note that we may write
	 * not into current output scanline but in several after
	 * it as well (if we enlarge image vertically.)
	 */
	if ((frame->curline + 1) >= data_h) {
		if (uvd->debug >= 3)
			FUNC8(&uvd->dev->dev,
				 "Reached line %d. (frame is done)\n",
				 frame->curline);
		return scan_NextFrame;
	}

	/* Make sure that lineBuffer can store two lines of data */
	len = 3 * data_w; /* <y-data> <uyvy-data> */
	FUNC7(len <= sizeof(lineBuffer));

	/* Make sure there's enough data for two lines */
	if (FUNC3(&uvd->dp) < len)
		return scan_Out;

	/* Suck two lines of data out of the ring queue */
	FUNC2(&uvd->dp, lineBuffer, len);

	data = lineBuffer;
	color = data + data_w;		/* Point to where color planes begin */

	/* Bottom-to-top scanning */
	rw = (int)FUNC5(frame->request) - (int)(frame->curline) - 1;
	FUNC0(rw, 0, FUNC5(frame->request)-1);

	/* Iterate over two lines. */
	for (line = 0; line < 2; line++) {
		for (i = 0; i < FUNC4(frame->request); i++) {
			int y;
			int rv, gv, bv;	/* RGB components */

			if (i >= data_w) {
				FUNC1(frame, i, rw, 0, 0, 0);
				continue;
			}

			/* first line is YYY...Y; second is UYVY...UYVY */
			y = data[(line == 0) ? i : (i*2 + 1)];

			/* Apply static color correction */
			u = color[(i/2)*4] + hue_corr;
			v = color[(i/2)*4 + 2] + hue2_corr;

			/* Apply color correction */
			if (color_corr != 0) {
				/* Magnify up to 2 times, reduce down to zero saturation */
				u = 128 + ((ccm + color_corr) * (u - 128)) / ccm;
				v = 128 + ((ccm + color_corr) * (v - 128)) / ccm;
			}


			FUNC6(y, u, v, rv, gv, bv);
			FUNC1(frame, i, rw, rv, gv, bv);  /* No deinterlacing */
		}

		/* Check for the end of requested data */
		if (rw == 0)
			break;

		/* Prepare for the second line */
		rw--;
		data = lineBuffer + data_w;
	}
	frame->deinterlace = Deinterlace_None;

	/*
	 * Account for number of bytes that we wrote into output V4L frame.
	 * We do it here, after we are done with the scanline, because we
	 * may fill more than one output scanline if we do vertical
	 * enlargement.
	 */
	frame->curline += 2;
	*pcopylen += 2 * v4l_linesize;

	if (frame->curline >= FUNC5(frame->request)) {
		if (uvd->debug >= 3) {
			FUNC8(&uvd->dev->dev,
				 "All requested lines (%ld.) done.\n",
				 FUNC5(frame->request));
		}
		return scan_NextFrame;
	} else
		return scan_Continue;
}