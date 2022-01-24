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
struct v4l2_pix_format {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_host {struct mx3_camera_dev* priv; } ;
struct soc_camera_format_xlate {int /*<<< orphan*/  host_fmt; int /*<<< orphan*/  buswidth; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {TYPE_2__ dev; int /*<<< orphan*/  current_fmt; int /*<<< orphan*/  buswidth; } ;
struct mx3_camera_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mx3_camera_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mx3_camera_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_fmt ; 
 struct v4l2_subdev* FUNC4 (struct soc_camera_device*) ; 
 struct soc_camera_format_xlate* FUNC5 (struct soc_camera_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct soc_camera_host* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_format*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC9(struct soc_camera_device *icd,
			      struct v4l2_format *f)
{
	struct soc_camera_host *ici = FUNC7(icd->dev.parent);
	struct mx3_camera_dev *mx3_cam = ici->priv;
	struct v4l2_subdev *sd = FUNC4(icd);
	const struct soc_camera_format_xlate *xlate;
	struct v4l2_pix_format *pix = &f->fmt.pix;
	int ret;

	xlate = FUNC5(icd, pix->pixelformat);
	if (!xlate) {
		FUNC3(icd->dev.parent, "Format %x not found\n",
			 pix->pixelformat);
		return -EINVAL;
	}

	FUNC6(&pix->width);
	FUNC2(icd->dev.parent, "Set format %dx%d\n", pix->width, pix->height);

	ret = FUNC0(mx3_cam);
	if (ret < 0)
		return ret;

	/*
	 * Might have to perform a complete interface initialisation like in
	 * ipu_csi_init_interface() in mxc_v4l2_s_param(). Also consider
	 * mxc_v4l2_s_fmt()
	 */

	FUNC1(mx3_cam, pix->width, pix->height);

	ret = FUNC8(sd, video, s_fmt, f);
	if (!ret) {
		icd->buswidth = xlate->buswidth;
		icd->current_fmt = xlate->host_fmt;
	}

	FUNC2(icd->dev.parent, "Sensor set %dx%d\n", pix->width, pix->height);

	return ret;
}