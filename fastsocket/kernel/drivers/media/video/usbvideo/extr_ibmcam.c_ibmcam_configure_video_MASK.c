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
struct TYPE_2__ {int colour; int hue; int brightness; int contrast; int whiteness; int depth; int channels; int /*<<< orphan*/  name; int /*<<< orphan*/  type; scalar_t__ channel; scalar_t__ tuners; scalar_t__ flags; int /*<<< orphan*/  minheight; int /*<<< orphan*/  minwidth; int /*<<< orphan*/  maxheight; int /*<<< orphan*/  maxwidth; scalar_t__ audios; int /*<<< orphan*/  palette; } ;
struct uvd {TYPE_1__ vchan; TYPE_1__ vcap; int /*<<< orphan*/  canvas; TYPE_1__ vpic; TYPE_1__ vpic_old; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEO_PALETTE_RGB24 ; 
 int /*<<< orphan*/  VIDEO_TYPE_CAMERA ; 
 int /*<<< orphan*/  VID_TYPE_CAPTURE ; 
 int hue_correction ; 
 int init_brightness ; 
 int init_color ; 
 int init_contrast ; 
 int init_hue ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  min_canvasHeight ; 
 int /*<<< orphan*/  min_canvasWidth ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct uvd *uvd)
{
	if (uvd == NULL)
		return;

	FUNC0(init_brightness, 0, 255);
	FUNC0(init_contrast, 0, 255);
	FUNC0(init_color, 0, 255);
	FUNC0(init_hue, 0, 255);
	FUNC0(hue_correction, 0, 255);

	FUNC3(&uvd->vpic, 0, sizeof(uvd->vpic));
	FUNC3(&uvd->vpic_old, 0x55, sizeof(uvd->vpic_old));

	uvd->vpic.colour = init_color << 8;
	uvd->vpic.hue = init_hue << 8;
	uvd->vpic.brightness = init_brightness << 8;
	uvd->vpic.contrast = init_contrast << 8;
	uvd->vpic.whiteness = 105 << 8; /* This one isn't used */
	uvd->vpic.depth = 24;
	uvd->vpic.palette = VIDEO_PALETTE_RGB24;

	FUNC3(&uvd->vcap, 0, sizeof(uvd->vcap));
	FUNC4(uvd->vcap.name, "IBM USB Camera");
	uvd->vcap.type = VID_TYPE_CAPTURE;
	uvd->vcap.channels = 1;
	uvd->vcap.audios = 0;
	uvd->vcap.maxwidth = FUNC1(uvd->canvas);
	uvd->vcap.maxheight = FUNC2(uvd->canvas);
	uvd->vcap.minwidth = min_canvasWidth;
	uvd->vcap.minheight = min_canvasHeight;

	FUNC3(&uvd->vchan, 0, sizeof(uvd->vchan));
	uvd->vchan.flags = 0;
	uvd->vchan.tuners = 0;
	uvd->vchan.channel = 0;
	uvd->vchan.type = VIDEO_TYPE_CAMERA;
	FUNC4(uvd->vchan.name, "Camera");
}