
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int userptr; } ;
struct v4l2_buffer {int index; scalar_t__ memory; int flags; int length; TYPE_2__ m; } ;
struct TYPE_4__ {int userptr; } ;
struct TYPE_6__ {int flags; scalar_t__ memory; int length; TYPE_1__ m; } ;
struct gspca_frame {TYPE_3__ v4l2_buf; } ;
struct gspca_dev {unsigned int nframes; scalar_t__ memory; int* fr_queue; int queue_lock; int fr_q; struct gspca_frame* frame; } ;
struct file {int dummy; } ;


 int BUF_ALL_FLAGS ;
 int D_FRAM ;
 int EINVAL ;
 int ERESTARTSYS ;
 int GSPCA_MAX_FRAMES ;
 int PDEBUG (int ,char*,...) ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_QUEUED ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *priv,
   struct v4l2_buffer *v4l2_buf)
{
 struct gspca_dev *gspca_dev = priv;
 struct gspca_frame *frame;
 int i, index, ret;

 PDEBUG(D_FRAM, "qbuf %d", v4l2_buf->index);

 if (mutex_lock_interruptible(&gspca_dev->queue_lock))
  return -ERESTARTSYS;

 index = v4l2_buf->index;
 if ((unsigned) index >= gspca_dev->nframes) {
  PDEBUG(D_FRAM,
   "qbuf idx %d >= %d", index, gspca_dev->nframes);
  ret = -EINVAL;
  goto out;
 }
 if (v4l2_buf->memory != gspca_dev->memory) {
  PDEBUG(D_FRAM, "qbuf bad memory type");
  ret = -EINVAL;
  goto out;
 }

 frame = &gspca_dev->frame[index];
 if (frame->v4l2_buf.flags & BUF_ALL_FLAGS) {
  PDEBUG(D_FRAM, "qbuf bad state");
  ret = -EINVAL;
  goto out;
 }

 frame->v4l2_buf.flags |= V4L2_BUF_FLAG_QUEUED;

 if (frame->v4l2_buf.memory == V4L2_MEMORY_USERPTR) {
  frame->v4l2_buf.m.userptr = v4l2_buf->m.userptr;
  frame->v4l2_buf.length = v4l2_buf->length;
 }


 i = atomic_read(&gspca_dev->fr_q);
 gspca_dev->fr_queue[i] = index;
 atomic_set(&gspca_dev->fr_q, (i + 1) % GSPCA_MAX_FRAMES);

 v4l2_buf->flags |= V4L2_BUF_FLAG_QUEUED;
 v4l2_buf->flags &= ~V4L2_BUF_FLAG_DONE;
 ret = 0;
out:
 mutex_unlock(&gspca_dev->queue_lock);
 return ret;
}
