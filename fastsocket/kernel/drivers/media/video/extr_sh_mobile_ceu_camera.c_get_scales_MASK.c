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
struct v4l2_subdev {int dummy; } ;
struct v4l2_crop {int /*<<< orphan*/  c; int /*<<< orphan*/  type; } ;
struct soc_camera_device {int /*<<< orphan*/  user_height; int /*<<< orphan*/  user_width; struct sh_mobile_ceu_cam* host_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct sh_mobile_ceu_cam {TYPE_1__ ceu_rect; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 struct v4l2_subdev* FUNC4 (struct soc_camera_device*) ; 

__attribute__((used)) static int FUNC5(struct soc_camera_device *icd,
		      unsigned int *scale_h, unsigned int *scale_v)
{
	struct sh_mobile_ceu_cam *cam = icd->host_priv;
	struct v4l2_subdev *sd = FUNC4(icd);
	struct v4l2_crop cam_crop;
	unsigned int width_in, height_in;
	int ret;

	cam_crop.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

	ret = FUNC1(sd, &cam_crop.c);
	if (ret < 0)
		return ret;

	ret = FUNC2(sd, &cam_crop.c, scale_h, scale_v);
	if (ret < 0)
		return ret;

	width_in = FUNC3(cam->ceu_rect.width, *scale_h);
	height_in = FUNC3(cam->ceu_rect.height, *scale_v);

	*scale_h = FUNC0(width_in, icd->user_width);
	*scale_v = FUNC0(height_in, icd->user_height);

	return 0;
}