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
struct v4l2_pix_format {int bytesperline; int width; int sizeimage; int height; int /*<<< orphan*/  pixelformat; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cafe_format_struct {int bpp; int /*<<< orphan*/  mbus_code; int /*<<< orphan*/  pixelformat; } ;
struct cafe_camera {int /*<<< orphan*/  s_mutex; } ;

/* Variables and functions */
 struct cafe_format_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  try_mbus_fmt ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_mbus_framefmt*,struct v4l2_pix_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_pix_format*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC6(struct file *filp, void *priv,
		struct v4l2_format *fmt)
{
	struct cafe_camera *cam = priv;
	struct cafe_format_struct *f;
	struct v4l2_pix_format *pix = &fmt->fmt.pix;
	struct v4l2_mbus_framefmt mbus_fmt;
	int ret;

	f = FUNC0(pix->pixelformat);
	pix->pixelformat = f->pixelformat;
	FUNC4(&mbus_fmt, pix, f->mbus_code);
	FUNC1(&cam->s_mutex);
	ret = FUNC3(cam, video, try_mbus_fmt, &mbus_fmt);
	FUNC2(&cam->s_mutex);
	FUNC5(pix, &mbus_fmt);
	pix->bytesperline = pix->width * f->bpp;
	pix->sizeimage = pix->height * pix->bytesperline;
	return ret;
}