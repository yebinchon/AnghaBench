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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int colour; int hue; int brightness; int contrast; int whiteness; int depth; int channels; int /*<<< orphan*/  name; int /*<<< orphan*/  type; scalar_t__ channel; scalar_t__ tuners; scalar_t__ flags; int /*<<< orphan*/  maxheight; int /*<<< orphan*/  maxwidth; int /*<<< orphan*/  minheight; int /*<<< orphan*/  minwidth; scalar_t__ audios; int /*<<< orphan*/  palette; } ;
struct uvd {TYPE_1__ vchan; TYPE_1__ vcap; TYPE_1__ vpic; TYPE_1__ vpic_old; scalar_t__ user_data; } ;
struct konicawc {int brightness; int contrast; int saturation; int sharpness; int white_bal; } ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  MAX_CONTRAST ; 
 int /*<<< orphan*/  MAX_SATURATION ; 
 int /*<<< orphan*/  MAX_SHARPNESS ; 
 int /*<<< orphan*/  MAX_WHITEBAL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t SIZE_160X120 ; 
 size_t SIZE_320X240 ; 
 int /*<<< orphan*/  VIDEO_PALETTE_YUV420P ; 
 int /*<<< orphan*/  VIDEO_TYPE_CAMERA ; 
 int /*<<< orphan*/  VID_TYPE_CAPTURE ; 
 int brightness ; 
 TYPE_2__* camera_sizes ; 
 int contrast ; 
 int /*<<< orphan*/  FUNC2 (struct uvd*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct uvd*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int saturation ; 
 int sharpness ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int whitebal ; 

__attribute__((used)) static void FUNC6(struct uvd *uvd)
{
	struct konicawc *cam = (struct konicawc *)uvd->user_data;
	u8 buf[2];

	FUNC4(&uvd->vpic, 0, sizeof(uvd->vpic));
	FUNC4(&uvd->vpic_old, 0x55, sizeof(uvd->vpic_old));

	FUNC1(brightness, 0, MAX_BRIGHTNESS);
	FUNC1(contrast, 0, MAX_CONTRAST);
	FUNC1(saturation, 0, MAX_SATURATION);
	FUNC1(sharpness, 0, MAX_SHARPNESS);
	FUNC1(whitebal, 0, MAX_WHITEBAL);

	cam->brightness = brightness / 11;
	cam->contrast = contrast / 11;
	cam->saturation = saturation / 11;
	cam->sharpness = sharpness / 11;
	cam->white_bal = whitebal / 11;

	uvd->vpic.colour = 108;
	uvd->vpic.hue = 108;
	uvd->vpic.brightness = brightness;
	uvd->vpic.contrast = contrast;
	uvd->vpic.whiteness = whitebal;
	uvd->vpic.depth = 6;
	uvd->vpic.palette = VIDEO_PALETTE_YUV420P;

	FUNC4(&uvd->vcap, 0, sizeof(uvd->vcap));
	FUNC5(uvd->vcap.name, "Konica Webcam");
	uvd->vcap.type = VID_TYPE_CAPTURE;
	uvd->vcap.channels = 1;
	uvd->vcap.audios = 0;
	uvd->vcap.minwidth = camera_sizes[SIZE_160X120].width;
	uvd->vcap.minheight = camera_sizes[SIZE_160X120].height;
	uvd->vcap.maxwidth = camera_sizes[SIZE_320X240].width;
	uvd->vcap.maxheight = camera_sizes[SIZE_320X240].height;

	FUNC4(&uvd->vchan, 0, sizeof(uvd->vchan));
	uvd->vchan.flags = 0 ;
	uvd->vchan.tuners = 0;
	uvd->vchan.channel = 0;
	uvd->vchan.type = VIDEO_TYPE_CAMERA;
	FUNC5(uvd->vchan.name, "Camera");

	/* Talk to device */
	FUNC0(1, "device init");
	if(!FUNC2(uvd, 0x3, 0, 0x10, buf, 2))
		FUNC0(2, "3,10 -> %2.2x %2.2x", buf[0], buf[1]);
	if(!FUNC2(uvd, 0x3, 0, 0x10, buf, 2))
		FUNC0(2, "3,10 -> %2.2x %2.2x", buf[0], buf[1]);
	if(FUNC3(uvd, 0x2, 0, 0xd))
		FUNC0(2, "2,0,d failed");
	FUNC0(1, "setting initial values");
}