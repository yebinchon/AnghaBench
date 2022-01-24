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
struct v4l2_buffer {scalar_t__ index; } ;
struct file {struct cafe_camera* private_data; } ;
struct TYPE_2__ {int flags; } ;
struct cafe_sio_buffer {int /*<<< orphan*/  list; TYPE_1__ v4lbuf; } ;
struct cafe_camera {scalar_t__ n_sbufs; int /*<<< orphan*/  s_mutex; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  sb_avail; struct cafe_sio_buffer* sb_bufs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int V4L2_BUF_FLAG_DONE ; 
 int V4L2_BUF_FLAG_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct file *filp, void *priv,
		struct v4l2_buffer *buf)
{
	struct cafe_camera *cam = filp->private_data;
	struct cafe_sio_buffer *sbuf;
	int ret = -EINVAL;
	unsigned long flags;

	FUNC1(&cam->s_mutex);
	if (buf->index >= cam->n_sbufs)
		goto out;
	sbuf = cam->sb_bufs + buf->index;
	if (sbuf->v4lbuf.flags & V4L2_BUF_FLAG_QUEUED) {
		ret = 0; /* Already queued?? */
		goto out;
	}
	if (sbuf->v4lbuf.flags & V4L2_BUF_FLAG_DONE) {
		/* Spec doesn't say anything, seems appropriate tho */
		ret = -EBUSY;
		goto out;
	}
	sbuf->v4lbuf.flags |= V4L2_BUF_FLAG_QUEUED;
	FUNC3(&cam->dev_lock, flags);
	FUNC0(&sbuf->list, &cam->sb_avail);
	FUNC4(&cam->dev_lock, flags);
	ret = 0;
  out:
	FUNC2(&cam->s_mutex);
	return ret;
}