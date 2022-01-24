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
struct v4l2_rect {int left; int width; int top; int height; } ;
typedef  enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;

/* Variables and functions */
 int CCDC_FRMFMT_INTERLACED ; 
 int /*<<< orphan*/  CCDC_HORZ_INFO ; 
 int CCDC_HORZ_INFO_SPH_SHIFT ; 
 int /*<<< orphan*/  CCDC_VDINT ; 
 int CCDC_VDINT_VDINT0_SHIFT ; 
 int CCDC_VDINT_VDINT1_MASK ; 
 int /*<<< orphan*/  CCDC_VERT_LINES ; 
 int /*<<< orphan*/  CCDC_VERT_START ; 
 int CCDC_VERT_START_SLV0_SHIFT ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(struct v4l2_rect *image_win,
		enum ccdc_frmfmt frm_fmt,
		int ppc)
{
	int horz_start, horz_nr_pixels;
	int vert_start, vert_nr_lines;
	int val = 0, mid_img = 0;

	FUNC0(dev, "\nStarting ccdc_setwin...");
	/*
	 * ppc - per pixel count. indicates how many pixels per cell
	 * output to SDRAM. example, for ycbcr, it is one y and one c, so 2.
	 * raw capture this is 1
	 */
	horz_start = image_win->left << (ppc - 1);
	horz_nr_pixels = (image_win->width << (ppc - 1)) - 1;
	FUNC1((horz_start << CCDC_HORZ_INFO_SPH_SHIFT) | horz_nr_pixels,
	     CCDC_HORZ_INFO);

	vert_start = image_win->top;

	if (frm_fmt == CCDC_FRMFMT_INTERLACED) {
		vert_nr_lines = (image_win->height >> 1) - 1;
		vert_start >>= 1;
		/* Since first line doesn't have any data */
		vert_start += 1;
		/* configure VDINT0 */
		val = (vert_start << CCDC_VDINT_VDINT0_SHIFT);
		FUNC1(val, CCDC_VDINT);

	} else {
		/* Since first line doesn't have any data */
		vert_start += 1;
		vert_nr_lines = image_win->height - 1;
		/*
		 * configure VDINT0 and VDINT1. VDINT1 will be at half
		 * of image height
		 */
		mid_img = vert_start + (image_win->height / 2);
		val = (vert_start << CCDC_VDINT_VDINT0_SHIFT) |
		    (mid_img & CCDC_VDINT_VDINT1_MASK);
		FUNC1(val, CCDC_VDINT);

	}
	FUNC1((vert_start << CCDC_VERT_START_SLV0_SHIFT) | vert_start,
	     CCDC_VERT_START);
	FUNC1(vert_nr_lines, CCDC_VERT_LINES);
	FUNC0(dev, "\nEnd of ccdc_setwin...");
}