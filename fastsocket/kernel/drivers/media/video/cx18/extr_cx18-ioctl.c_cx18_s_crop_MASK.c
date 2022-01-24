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
struct v4l2_crop {scalar_t__ type; } ;
struct file {int dummy; } ;
struct cx18_open_id {int /*<<< orphan*/  prio; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, struct v4l2_crop *crop)
{
	struct cx18_open_id *id = fh;
	struct cx18 *cx = id->cx;
	int ret;

	ret = FUNC1(&cx->prio, id->prio);
	if (ret)
		return ret;

	if (crop->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return -EINVAL;
	FUNC0("VIDIOC_S_CROP not implemented\n");
	return -EINVAL;
}