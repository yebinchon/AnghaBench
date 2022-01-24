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
struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {int height; int width; int bytesperline; int sizeimage; int field; scalar_t__ pixelformat; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_format_xlate {TYPE_3__* host_fmt; TYPE_2__* cam_fmt; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {TYPE_4__ dev; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef  scalar_t__ __u32 ;
struct TYPE_7__ {scalar_t__ fourcc; int /*<<< orphan*/  depth; } ;
struct TYPE_6__ {scalar_t__ fourcc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int V4L2_FIELD_ANY ; 
 int V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct v4l2_subdev* FUNC3 (struct soc_camera_device*) ; 
 struct soc_camera_format_xlate* FUNC4 (struct soc_camera_device*,scalar_t__) ; 
 int /*<<< orphan*/  try_fmt ; 
 int FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_format*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC6(struct soc_camera_device *icd,
			      struct v4l2_format *f)
{
	struct v4l2_subdev *sd = FUNC3(icd);
	const struct soc_camera_format_xlate *xlate;
	struct v4l2_pix_format *pix = &f->fmt.pix;
	__u32 pixfmt = pix->pixelformat;
	enum v4l2_field field;
	int ret;

	xlate = FUNC4(icd, pixfmt);
	if (pixfmt && !xlate) {
		FUNC2(icd->dev.parent, "Format %x not found\n", pixfmt);
		return -EINVAL;
	}

	/* limit to MX3 hardware capabilities */
	if (pix->height > 4096)
		pix->height = 4096;
	if (pix->width > 4096)
		pix->width = 4096;

	pix->bytesperline = pix->width *
		FUNC0(xlate->host_fmt->depth, 8);
	pix->sizeimage = pix->height * pix->bytesperline;

	/* camera has to see its format, but the user the original one */
	pix->pixelformat = xlate->cam_fmt->fourcc;
	/* limit to sensor capabilities */
	ret = FUNC5(sd, video, try_fmt, f);
	pix->pixelformat = xlate->host_fmt->fourcc;

	field = pix->field;

	if (field == V4L2_FIELD_ANY) {
		pix->field = V4L2_FIELD_NONE;
	} else if (field != V4L2_FIELD_NONE) {
		FUNC1(icd->dev.parent, "Field type %d unsupported.\n", field);
		return -EINVAL;
	}

	return ret;
}