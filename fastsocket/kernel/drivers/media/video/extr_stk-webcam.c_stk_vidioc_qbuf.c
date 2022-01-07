
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {scalar_t__ memory; scalar_t__ index; int flags; } ;
struct stk_sio_buffer {struct v4l2_buffer v4lbuf; int list; } ;
struct stk_camera {scalar_t__ n_sbufs; int spinlock; int sio_avail; struct stk_sio_buffer* sio_bufs; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_QUEUED ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int stk_vidioc_qbuf(struct file *filp,
  void *priv, struct v4l2_buffer *buf)
{
 struct stk_camera *dev = priv;
 struct stk_sio_buffer *sbuf;
 unsigned long flags;

 if (buf->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;

 if (buf->index >= dev->n_sbufs)
  return -EINVAL;
 sbuf = dev->sio_bufs + buf->index;
 if (sbuf->v4lbuf.flags & V4L2_BUF_FLAG_QUEUED)
  return 0;
 sbuf->v4lbuf.flags |= V4L2_BUF_FLAG_QUEUED;
 sbuf->v4lbuf.flags &= ~V4L2_BUF_FLAG_DONE;
 spin_lock_irqsave(&dev->spinlock, flags);
 list_add_tail(&sbuf->list, &dev->sio_avail);
 *buf = sbuf->v4lbuf;
 spin_unlock_irqrestore(&dev->spinlock, flags);
 return 0;
}
