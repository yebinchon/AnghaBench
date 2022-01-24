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
struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct soc_camera_format_xlate {int /*<<< orphan*/  host_fmt; int /*<<< orphan*/  buswidth; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int /*<<< orphan*/  current_fmt; int /*<<< orphan*/  buswidth; TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_fmt ; 
 struct v4l2_subdev* FUNC1 (struct soc_camera_device*) ; 
 struct soc_camera_format_xlate* FUNC2 (struct soc_camera_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_format*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC4(struct soc_camera_device *icd,
			      struct v4l2_format *f)
{
	struct v4l2_subdev *sd = FUNC1(icd);
	const struct soc_camera_format_xlate *xlate;
	struct v4l2_pix_format *pix = &f->fmt.pix;
	int ret;

	xlate = FUNC2(icd, pix->pixelformat);
	if (!xlate) {
		FUNC0(icd->dev.parent, "Format %x not found\n",
			 pix->pixelformat);
		return -EINVAL;
	}

	ret = FUNC3(sd, video, s_fmt, f);
	if (!ret) {
		icd->buswidth = xlate->buswidth;
		icd->current_fmt = xlate->host_fmt;
	}

	return ret;
}