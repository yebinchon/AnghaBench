#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int width; int height; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_5__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_6__ {TYPE_4__* cam_mode; } ;
struct gspca_dev {TYPE_2__ cam; } ;
struct TYPE_8__ {int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int D_CONF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int gspca_debug ; 
 int FUNC1 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,int) ; 
 int FUNC3 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev,
			struct v4l2_format *fmt)
{
	int w, h, mode, mode2;

	w = fmt->fmt.pix.width;
	h = fmt->fmt.pix.height;

#ifdef GSPCA_DEBUG
	if (gspca_debug & D_CONF)
		PDEBUG_MODE("try fmt cap", fmt->fmt.pix.pixelformat, w, h);
#endif
	/* search the closest mode for width and height */
	mode = FUNC3(gspca_dev, w, h);

	/* OK if right palette */
	if (gspca_dev->cam.cam_mode[mode].pixelformat
						!= fmt->fmt.pix.pixelformat) {

		/* else, search the closest mode with the same pixel format */
		mode2 = FUNC1(gspca_dev, mode,
					fmt->fmt.pix.pixelformat);
		if (mode2 >= 0)
			mode = mode2;
/*		else
			;		 * no chance, return this mode */
	}
	FUNC2(&fmt->fmt.pix, &gspca_dev->cam.cam_mode[mode],
		sizeof fmt->fmt.pix);
	return mode;			/* used when s_fmt */
}