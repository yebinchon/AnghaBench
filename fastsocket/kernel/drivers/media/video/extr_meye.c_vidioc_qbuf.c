
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_buffer {scalar_t__ memory; size_t index; int flags; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int lock; int grabq; TYPE_1__* grab_buffer; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int EINVAL ;
 scalar_t__ MEYE_BUF_UNUSED ;
 scalar_t__ MEYE_BUF_USING ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_QUEUED ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 size_t gbuffers ;
 int kfifo_put (int ,unsigned char*,int) ;
 TYPE_2__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
{
 if (buf->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;

 if (buf->index >= gbuffers)
  return -EINVAL;

 if (meye.grab_buffer[buf->index].state != MEYE_BUF_UNUSED)
  return -EINVAL;

 mutex_lock(&meye.lock);
 buf->flags |= V4L2_BUF_FLAG_QUEUED;
 buf->flags &= ~V4L2_BUF_FLAG_DONE;
 meye.grab_buffer[buf->index].state = MEYE_BUF_USING;
 kfifo_put(meye.grabq, (unsigned char *)&buf->index, sizeof(int));
 mutex_unlock(&meye.lock);

 return 0;
}
