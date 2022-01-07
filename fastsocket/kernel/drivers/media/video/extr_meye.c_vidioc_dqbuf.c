
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; } ;
struct v4l2_buffer {scalar_t__ memory; int index; int length; TYPE_1__ m; int sequence; int timestamp; int field; int flags; int bytesused; } ;
struct file {int f_flags; } ;
struct TYPE_6__ {int lock; TYPE_2__* grab_buffer; int doneq; int proc_list; } ;
struct TYPE_5__ {scalar_t__ state; int sequence; int timestamp; int size; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 scalar_t__ MEYE_BUF_DONE ;
 scalar_t__ MEYE_BUF_UNUSED ;
 int O_NONBLOCK ;
 int V4L2_BUF_FLAG_MAPPED ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int gbufsize ;
 int kfifo_get (int ,unsigned char*,int) ;
 scalar_t__ kfifo_len (int ) ;
 TYPE_3__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int vidioc_dqbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
{
 int reqnr;

 if (buf->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;

 mutex_lock(&meye.lock);

 if (kfifo_len(meye.doneq) == 0 && file->f_flags & O_NONBLOCK) {
  mutex_unlock(&meye.lock);
  return -EAGAIN;
 }

 if (wait_event_interruptible(meye.proc_list,
         kfifo_len(meye.doneq) != 0) < 0) {
  mutex_unlock(&meye.lock);
  return -EINTR;
 }

 if (!kfifo_get(meye.doneq, (unsigned char *)&reqnr,
         sizeof(int))) {
  mutex_unlock(&meye.lock);
  return -EBUSY;
 }

 if (meye.grab_buffer[reqnr].state != MEYE_BUF_DONE) {
  mutex_unlock(&meye.lock);
  return -EINVAL;
 }

 buf->index = reqnr;
 buf->bytesused = meye.grab_buffer[reqnr].size;
 buf->flags = V4L2_BUF_FLAG_MAPPED;
 buf->field = V4L2_FIELD_NONE;
 buf->timestamp = meye.grab_buffer[reqnr].timestamp;
 buf->sequence = meye.grab_buffer[reqnr].sequence;
 buf->memory = V4L2_MEMORY_MMAP;
 buf->m.offset = reqnr * gbufsize;
 buf->length = gbufsize;
 meye.grab_buffer[reqnr].state = MEYE_BUF_UNUSED;
 mutex_unlock(&meye.lock);

 return 0;
}
