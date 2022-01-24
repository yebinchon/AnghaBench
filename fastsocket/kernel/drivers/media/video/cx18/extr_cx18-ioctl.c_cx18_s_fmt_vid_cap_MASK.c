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
struct v4l2_mbus_framefmt {int width; int height; int /*<<< orphan*/  code; } ;
struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx18_open_id {int /*<<< orphan*/  prio; struct cx18* cx; } ;
struct TYPE_6__ {int width; int height; } ;
struct cx18 {int /*<<< orphan*/  sd_av; TYPE_3__ params; int /*<<< orphan*/  ana_capturing; int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_MBUS_FMT_FIXED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct file*,void*,struct v4l2_format*) ; 
 int FUNC2 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  s_mbus_fmt ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
				struct v4l2_format *fmt)
{
	struct cx18_open_id *id = fh;
	struct cx18 *cx = id->cx;
	struct v4l2_mbus_framefmt mbus_fmt;
	int ret;
	int w, h;

	ret = FUNC3(&cx->prio, id->prio);
	if (ret)
		return ret;

	ret = FUNC2(file, fh, fmt);
	if (ret)
		return ret;
	w = fmt->fmt.pix.width;
	h = fmt->fmt.pix.height;

	if (cx->params.width == w && cx->params.height == h)
		return 0;

	if (FUNC0(&cx->ana_capturing) > 0)
		return -EBUSY;

	mbus_fmt.width = cx->params.width = w;
	mbus_fmt.height = cx->params.height = h;
	mbus_fmt.code = V4L2_MBUS_FMT_FIXED;
	FUNC4(cx->sd_av, video, s_mbus_fmt, &mbus_fmt);
	return FUNC1(file, fh, fmt);
}