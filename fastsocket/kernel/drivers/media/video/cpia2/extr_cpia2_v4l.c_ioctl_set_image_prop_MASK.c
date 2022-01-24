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
struct video_picture {int brightness; int colour; int contrast; } ;
struct TYPE_3__ {int brightness; int saturation; int contrast; } ;
struct TYPE_4__ {TYPE_1__ color_params; } ;
struct camera_data {TYPE_2__ params; int /*<<< orphan*/  vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct video_picture*,int) ; 

__attribute__((used)) static int FUNC3(void *arg, struct camera_data *cam)
{
	struct video_picture *vp;
	int retval = 0;
	vp = arg;

	/* brightness, color, contrast need no check 0-65535 */
	FUNC2(&cam->vp, vp, sizeof(*vp));

	/* update cam->params.colorParams */
	cam->params.color_params.brightness = vp->brightness / 256;
	cam->params.color_params.saturation = vp->colour / 256;
	cam->params.color_params.contrast = vp->contrast / 256;

	FUNC0("Requested params: bright 0x%X, sat 0x%X, contrast 0x%X\n",
	    cam->params.color_params.brightness,
	    cam->params.color_params.saturation,
	    cam->params.color_params.contrast);

	FUNC1(cam);

	return retval;
}