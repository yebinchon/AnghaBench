#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct v4l2_fmtdesc {int index; int /*<<< orphan*/  description; int /*<<< orphan*/  pixelformat; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_RGB565 ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_RGB565X ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_SBGGR8 ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_UYVY ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_YUYV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct file *filp,
		void *priv, struct v4l2_fmtdesc *fmtd)
{
	switch (fmtd->index) {
	case 0:
		fmtd->pixelformat = V4L2_PIX_FMT_RGB565;
		FUNC0(fmtd->description, "r5g6b5");
		break;
	case 1:
		fmtd->pixelformat = V4L2_PIX_FMT_RGB565X;
		FUNC0(fmtd->description, "r5g6b5BE");
		break;
	case 2:
		fmtd->pixelformat = V4L2_PIX_FMT_UYVY;
		FUNC0(fmtd->description, "yuv4:2:2");
		break;
	case 3:
		fmtd->pixelformat = V4L2_PIX_FMT_SBGGR8;
		FUNC0(fmtd->description, "Raw bayer");
		break;
	case 4:
		fmtd->pixelformat = V4L2_PIX_FMT_YUYV;
		FUNC0(fmtd->description, "yuv4:2:2");
		break;
	default:
		return -EINVAL;
	}
	return 0;
}