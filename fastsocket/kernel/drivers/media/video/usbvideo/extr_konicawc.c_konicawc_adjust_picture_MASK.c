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
struct TYPE_2__ {int brightness; int contrast; } ;
struct uvd {TYPE_1__ vpic; scalar_t__ user_data; } ;
struct konicawc {int brightness; int contrast; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int MAX_BRIGHTNESS ; 
 int MAX_CONTRAST ; 
 int /*<<< orphan*/  SetBrightness ; 
 int /*<<< orphan*/  SetContrast ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC2 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC3 (struct uvd*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uvd *uvd)
{
	struct konicawc *cam = (struct konicawc *)uvd->user_data;

	FUNC1(uvd);
	FUNC0(1, "new brightness: %d", uvd->vpic.brightness);
	uvd->vpic.brightness = (uvd->vpic.brightness > MAX_BRIGHTNESS) ? MAX_BRIGHTNESS : uvd->vpic.brightness;
	if(cam->brightness != uvd->vpic.brightness / 11) {
	   cam->brightness = uvd->vpic.brightness / 11;
	   FUNC0(1, "setting brightness to %d (%d)", cam->brightness,
	       cam->brightness * 11);
	   FUNC3(uvd, cam->brightness, SetBrightness);
	}

	FUNC0(1, "new contrast: %d", uvd->vpic.contrast);
	uvd->vpic.contrast = (uvd->vpic.contrast > MAX_CONTRAST) ? MAX_CONTRAST : uvd->vpic.contrast;
	if(cam->contrast != uvd->vpic.contrast / 11) {
		cam->contrast = uvd->vpic.contrast / 11;
		FUNC0(1, "setting contrast to %d (%d)", cam->contrast,
		    cam->contrast * 11);
		FUNC3(uvd, cam->contrast, SetContrast);
	}
	FUNC2(uvd);
}