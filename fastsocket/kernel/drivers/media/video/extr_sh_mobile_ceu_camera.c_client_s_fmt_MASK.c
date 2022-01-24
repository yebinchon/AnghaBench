#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {unsigned int width; unsigned int height; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_3__ bounds; int /*<<< orphan*/  type; TYPE_2__ fmt; } ;
struct v4l2_cropcap {TYPE_3__ bounds; int /*<<< orphan*/  type; TYPE_2__ fmt; } ;
struct TYPE_4__ {struct device* parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  cropcap ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  s_fmt ; 
 struct v4l2_subdev* FUNC3 (struct soc_camera_device*) ; 
 int FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_format*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC5(struct soc_camera_device *icd, struct v4l2_format *f,
			bool ceu_can_scale)
{
	struct v4l2_subdev *sd = FUNC3(icd);
	struct device *dev = icd->dev.parent;
	struct v4l2_pix_format *pix = &f->fmt.pix;
	unsigned int width = pix->width, height = pix->height, tmp_w, tmp_h;
	unsigned int max_width, max_height;
	struct v4l2_cropcap cap;
	int ret;

	cap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

	ret = FUNC4(sd, video, cropcap, &cap);
	if (ret < 0)
		return ret;

	max_width = FUNC2(cap.bounds.width, 2560);
	max_height = FUNC2(cap.bounds.height, 1920);

	ret = FUNC4(sd, video, s_fmt, f);
	if (ret < 0)
		return ret;

	FUNC1(dev, "camera scaled to %ux%u\n", pix->width, pix->height);

	if ((width == pix->width && height == pix->height) || !ceu_can_scale)
		return 0;

	/* Camera set a format, but geometry is not precise, try to improve */
	tmp_w = pix->width;
	tmp_h = pix->height;

	/* width <= max_width && height <= max_height - guaranteed by try_fmt */
	while ((width > tmp_w || height > tmp_h) &&
	       tmp_w < max_width && tmp_h < max_height) {
		tmp_w = FUNC2(2 * tmp_w, max_width);
		tmp_h = FUNC2(2 * tmp_h, max_height);
		pix->width = tmp_w;
		pix->height = tmp_h;
		ret = FUNC4(sd, video, s_fmt, f);
		FUNC1(dev, "Camera scaled to %ux%u\n",
			pix->width, pix->height);
		if (ret < 0) {
			/* This shouldn't happen */
			FUNC0(dev, "Client failed to set format: %d\n", ret);
			return ret;
		}
	}

	return 0;
}