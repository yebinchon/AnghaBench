
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_buffer {scalar_t__ index; } ;
struct file {struct cafe_camera* private_data; } ;
struct TYPE_2__ {int flags; } ;
struct cafe_sio_buffer {int list; TYPE_1__ v4lbuf; } ;
struct cafe_camera {scalar_t__ n_sbufs; int s_mutex; int dev_lock; int sb_avail; struct cafe_sio_buffer* sb_bufs; } ;


 int EBUSY ;
 int EINVAL ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_QUEUED ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cafe_vidioc_qbuf(struct file *filp, void *priv,
  struct v4l2_buffer *buf)
{
 struct cafe_camera *cam = filp->private_data;
 struct cafe_sio_buffer *sbuf;
 int ret = -EINVAL;
 unsigned long flags;

 mutex_lock(&cam->s_mutex);
 if (buf->index >= cam->n_sbufs)
  goto out;
 sbuf = cam->sb_bufs + buf->index;
 if (sbuf->v4lbuf.flags & V4L2_BUF_FLAG_QUEUED) {
  ret = 0;
  goto out;
 }
 if (sbuf->v4lbuf.flags & V4L2_BUF_FLAG_DONE) {

  ret = -EBUSY;
  goto out;
 }
 sbuf->v4lbuf.flags |= V4L2_BUF_FLAG_QUEUED;
 spin_lock_irqsave(&cam->dev_lock, flags);
 list_add(&sbuf->list, &cam->sb_avail);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
 ret = 0;
  out:
 mutex_unlock(&cam->s_mutex);
 return ret;
}
