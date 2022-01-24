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
struct file {struct cafe_camera* private_data; } ;
struct cafe_camera {scalar_t__ state; scalar_t__ n_sbufs; int /*<<< orphan*/  s_mutex; scalar_t__ sequence; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S_IDLE ; 
 int /*<<< orphan*/  S_STREAMING ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct file *filp, void *priv,
		enum v4l2_buf_type type)
{
	struct cafe_camera *cam = filp->private_data;
	int ret = -EINVAL;

	if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		goto out;
	FUNC1(&cam->s_mutex);
	if (cam->state != S_IDLE || cam->n_sbufs == 0)
		goto out_unlock;

	cam->sequence = 0;
	ret = FUNC0(cam, S_STREAMING);

  out_unlock:
	FUNC2(&cam->s_mutex);
  out:
	return ret;
}