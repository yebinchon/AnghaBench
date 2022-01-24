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
struct v4l2_pix_format {scalar_t__ pixelformat; int height; int bytesperline; int sizeimage; int field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  width; } ;
struct v4l2_mbus_framefmt {int height; int field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  width; int /*<<< orphan*/  code; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_format_xlate {int /*<<< orphan*/  code; int /*<<< orphan*/  host_fmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {TYPE_2__ dev; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_FIELD_ANY 129 
#define  V4L2_FIELD_NONE 128 
 scalar_t__ V4L2_PIX_FMT_YUV422P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct v4l2_subdev* FUNC2 (struct soc_camera_device*) ; 
 struct soc_camera_format_xlate* FUNC3 (struct soc_camera_device*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  try_mbus_fmt ; 
 int FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC7(struct soc_camera_device *icd,
			      struct v4l2_format *f)
{
	struct v4l2_subdev *sd = FUNC2(icd);
	const struct soc_camera_format_xlate *xlate;
	struct v4l2_pix_format *pix = &f->fmt.pix;
	struct v4l2_mbus_framefmt mf;
	__u32 pixfmt = pix->pixelformat;
	int ret;

	xlate = FUNC3(icd, pixfmt);
	if (!xlate) {
		FUNC1(icd->dev.parent, "Format %x not found\n", pixfmt);
		return -EINVAL;
	}

	/*
	 * Limit to pxa hardware capabilities.  YUV422P planar format requires
	 * images size to be a multiple of 16 bytes.  If not, zeros will be
	 * inserted between Y and U planes, and U and V planes, which violates
	 * the YUV422P standard.
	 */
	FUNC6(&pix->width, 48, 2048, 1,
			      &pix->height, 32, 2048, 0,
			      pixfmt == V4L2_PIX_FMT_YUV422P ? 4 : 0);

	pix->bytesperline = FUNC4(pix->width,
						    xlate->host_fmt);
	if (pix->bytesperline < 0)
		return pix->bytesperline;
	pix->sizeimage = pix->height * pix->bytesperline;

	/* limit to sensor capabilities */
	mf.width	= pix->width;
	mf.height	= pix->height;
	mf.field	= pix->field;
	mf.colorspace	= pix->colorspace;
	mf.code		= xlate->code;

	ret = FUNC5(sd, video, try_mbus_fmt, &mf);
	if (ret < 0)
		return ret;

	pix->width	= mf.width;
	pix->height	= mf.height;
	pix->colorspace	= mf.colorspace;

	switch (mf.field) {
	case V4L2_FIELD_ANY:
	case V4L2_FIELD_NONE:
		pix->field	= V4L2_FIELD_NONE;
		break;
	default:
		/* TODO: support interlaced at least in pass-through mode */
		FUNC0(icd->dev.parent, "Field type %d unsupported.\n",
			mf.field);
		return -EINVAL;
	}

	return ret;
}