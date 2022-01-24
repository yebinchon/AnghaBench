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
struct TYPE_2__ {scalar_t__ contrast; scalar_t__ hue; scalar_t__ colour; scalar_t__ brightness; scalar_t__ whiteness; } ;
struct uvd {TYPE_1__ vpic; scalar_t__ user_data; } ;
struct qcm {scalar_t__ contrast; scalar_t__ hue; scalar_t__ colour; scalar_t__ brightness; scalar_t__ whiteness; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct uvd*) ; 
 int FUNC2 (struct uvd*) ; 
 int FUNC3 (struct uvd*,scalar_t__) ; 
 int FUNC4 (struct uvd*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct uvd*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct uvd *uvd)
{
	int ret;
	struct qcm *cam = (struct qcm *) uvd->user_data;

	ret = FUNC1(uvd);
	if (ret) {
		FUNC0("can't turn camera off. abandoning pic adjustment");
		return;
	}

	/* if there's been a change in contrast, hue, or
	colour then we need to recalculate hsv in order
	to update gains */
	if ((cam->contrast != uvd->vpic.contrast) ||
		(cam->hue != uvd->vpic.hue) ||
		(cam->colour != uvd->vpic.colour)) {
		cam->contrast = uvd->vpic.contrast;
		cam->hue = uvd->vpic.hue;
		cam->colour = uvd->vpic.colour;
		ret = FUNC4(uvd, cam->hue, cam->colour,
						cam->contrast);
		if (ret) {
			FUNC0("can't set gains. abandoning pic adjustment");
			return;
		}
	}

	if (cam->brightness != uvd->vpic.brightness) {
		cam->brightness = uvd->vpic.brightness;
		ret = FUNC3(uvd, cam->brightness);
		if (ret) {
			FUNC0("can't set exposure. abandoning pic adjustment");
			return;
		}
	}

	if (cam->whiteness != uvd->vpic.whiteness) {
		cam->whiteness = uvd->vpic.whiteness;
		FUNC5(uvd, cam->whiteness);
		if (ret) {
			FUNC0("can't set shutter. abandoning pic adjustment");
			return;
		}
	}

	ret = FUNC2(uvd);
	if (ret) {
		FUNC0("can't reenable camera. pic adjustment failed");
		return;
	}
}