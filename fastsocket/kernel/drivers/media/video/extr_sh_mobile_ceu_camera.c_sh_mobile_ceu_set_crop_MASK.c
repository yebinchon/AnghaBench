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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_pix_format {unsigned int width; unsigned int height; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {int /*<<< orphan*/  type; TYPE_2__ fmt; } ;
struct v4l2_crop {struct v4l2_rect c; } ;
struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_4__ {struct device* parent; } ;
struct soc_camera_device {unsigned int user_width; unsigned int user_height; TYPE_1__ dev; struct sh_mobile_ceu_cam* host_priv; } ;
struct sh_mobile_ceu_dev {int cflcr; scalar_t__ active; int /*<<< orphan*/  is_interlaced; scalar_t__ image_mode; } ;
struct sh_mobile_ceu_cam {TYPE_3__* camera_fmt; struct v4l2_rect ceu_rect; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  fourcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFLCR ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_ceu_dev*,int) ; 
 int FUNC2 (struct sh_mobile_ceu_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_ceu_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct v4l2_subdev*,struct v4l2_crop*,struct v4l2_crop*) ; 
 int FUNC5 (struct soc_camera_device*,struct v4l2_rect*,struct v4l2_rect*,struct v4l2_rect*,struct v4l2_format*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,unsigned int,...) ; 
 int FUNC8 (struct soc_camera_device*,unsigned int*,unsigned int*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct soc_camera_device*,unsigned int,unsigned int) ; 
 struct v4l2_subdev* FUNC11 (struct soc_camera_device*) ; 
 struct soc_camera_host* FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct soc_camera_device *icd,
				  struct v4l2_crop *a)
{
	struct v4l2_rect *rect = &a->c;
	struct soc_camera_host *ici = FUNC12(icd->dev.parent);
	struct sh_mobile_ceu_dev *pcdev = ici->priv;
	struct v4l2_crop cam_crop;
	struct sh_mobile_ceu_cam *cam = icd->host_priv;
	struct v4l2_rect *cam_rect = &cam_crop.c, *ceu_rect = &cam->ceu_rect;
	struct v4l2_subdev *sd = FUNC11(icd);
	struct device *dev = icd->dev.parent;
	struct v4l2_format f;
	struct v4l2_pix_format *pix = &f.fmt.pix;
	unsigned int scale_comb_h, scale_comb_v, scale_ceu_h, scale_ceu_v,
		out_width, out_height;
	u32 capsr, cflcr;
	int ret;

	/* 1. Calculate current combined scales. */
	ret = FUNC8(icd, &scale_comb_h, &scale_comb_v);
	if (ret < 0)
		return ret;

	FUNC7(dev, "1: combined scales %u:%u\n", scale_comb_h, scale_comb_v);

	/* 2. Apply iterative camera S_CROP for new input window. */
	ret = FUNC4(sd, a, &cam_crop);
	if (ret < 0)
		return ret;

	FUNC7(dev, "2: camera cropped to %ux%u@%u:%u\n",
		cam_rect->width, cam_rect->height,
		cam_rect->left, cam_rect->top);

	/* On success cam_crop contains current camera crop */

	/*
	 * 3. If old combined scales applied to new crop produce an impossible
	 *    user window, adjust scales to produce nearest possible window.
	 */
	out_width	= FUNC9(rect->width, scale_comb_h);
	out_height	= FUNC9(rect->height, scale_comb_v);

	if (out_width > 2560)
		out_width = 2560;
	else if (out_width < 2)
		out_width = 2;

	if (out_height > 1920)
		out_height = 1920;
	else if (out_height < 4)
		out_height = 4;

	FUNC7(dev, "3: Adjusted output %ux%u\n", out_width, out_height);

	/* 4. Use G_CROP to retrieve actual input window: already in cam_crop */

	/*
	 * 5. Using actual input window and calculated combined scales calculate
	 *    camera target output window.
	 */
	pix->width		= FUNC9(cam_rect->width, scale_comb_h);
	pix->height		= FUNC9(cam_rect->height, scale_comb_v);

	FUNC7(dev, "5: camera target %ux%u\n", pix->width, pix->height);

	/* 6. - 9. */
	pix->pixelformat	= cam->camera_fmt->fourcc;
	pix->colorspace		= cam->camera_fmt->colorspace;

	capsr = FUNC2(pcdev);
	FUNC6(dev, "CAPSR 0x%x, CFLCR 0x%x\n", capsr, pcdev->cflcr);

	/* Make relative to camera rectangle */
	rect->left		-= cam_rect->left;
	rect->top		-= cam_rect->top;

	f.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

	ret = FUNC5(icd, cam_rect, rect, ceu_rect, &f,
			   pcdev->image_mode && !pcdev->is_interlaced);

	FUNC7(dev, "6-9: %d\n", ret);

	/* 10. Use CEU cropping to crop to the new window. */
	FUNC10(icd, out_width, out_height);

	FUNC7(dev, "10: CEU cropped to %ux%u@%u:%u\n",
		ceu_rect->width, ceu_rect->height,
		ceu_rect->left, ceu_rect->top);

	/*
	 * 11. Calculate CEU scales from camera scales from results of (10) and
	 *     user window from (3)
	 */
	scale_ceu_h = FUNC0(ceu_rect->width, &out_width);
	scale_ceu_v = FUNC0(ceu_rect->height, &out_height);

	FUNC7(dev, "11: CEU scales %u:%u\n", scale_ceu_h, scale_ceu_v);

	/* 12. Apply CEU scales. */
	cflcr = scale_ceu_h | (scale_ceu_v << 16);
	if (cflcr != pcdev->cflcr) {
		pcdev->cflcr = cflcr;
		FUNC3(pcdev, CFLCR, cflcr);
	}

	/* Restore capture */
	if (pcdev->active)
		capsr |= 1;
	FUNC1(pcdev, capsr);

	icd->user_width = out_width;
	icd->user_height = out_height;

	/* Even if only camera cropping succeeded */
	return ret;
}