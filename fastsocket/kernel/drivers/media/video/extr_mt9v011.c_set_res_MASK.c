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
struct v4l2_subdev {int dummy; } ;
struct mt9v011 {int width; int height; } ;

/* Variables and functions */
 int /*<<< orphan*/  R01_MT9V011_ROWSTART ; 
 int /*<<< orphan*/  R02_MT9V011_COLSTART ; 
 int /*<<< orphan*/  R03_MT9V011_HEIGHT ; 
 int /*<<< orphan*/  R04_MT9V011_WIDTH ; 
 int /*<<< orphan*/  R05_MT9V011_HBLANK ; 
 int /*<<< orphan*/  R06_MT9V011_VBLANK ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct mt9v011* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC3(struct v4l2_subdev *sd)
{
	struct mt9v011 *core = FUNC2(sd);
	unsigned vstart, hstart;

	/*
	 * The mt9v011 doesn't have scaling. So, in order to select the desired
	 * resolution, we're cropping at the middle of the sensor.
	 * hblank and vblank should be adjusted, in order to warrant that
	 * we'll preserve the line timings for 30 fps, no matter what resolution
	 * is selected.
	 * NOTE: datasheet says that width (and height) should be filled with
	 * width-1. However, this doesn't work, since one pixel per line will
	 * be missing.
	 */

	hstart = 14 + (640 - core->width) / 2;
	FUNC1(sd, R02_MT9V011_COLSTART, hstart);
	FUNC1(sd, R04_MT9V011_WIDTH, core->width);
	FUNC1(sd, R05_MT9V011_HBLANK, 771 - core->width);

	vstart = 8 + (480 - core->height) / 2;
	FUNC1(sd, R01_MT9V011_ROWSTART, vstart);
	FUNC1(sd, R03_MT9V011_HEIGHT, core->height);
	FUNC1(sd, R06_MT9V011_VBLANK, 508 - core->height);

	FUNC0(sd, NULL, NULL);
}