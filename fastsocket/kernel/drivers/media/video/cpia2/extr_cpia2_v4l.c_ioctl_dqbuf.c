
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ offset; } ;
struct v4l2_buffer {scalar_t__ type; scalar_t__ memory; int index; int flags; int bytesused; int sequence; int timecode; scalar_t__ reserved; scalar_t__ input; int length; TYPE_1__ m; int timestamp; int field; } ;
struct framebuf {scalar_t__ status; int num; } ;
struct file {int f_flags; } ;
struct camera_data {TYPE_2__* buffers; int frame_size; scalar_t__ frame_buffer; int present; int busy_lock; struct framebuf* curbuff; int wq_stream; } ;
struct TYPE_4__ {int status; scalar_t__ data; int seq; int timestamp; int length; } ;


 int DBG (char*,size_t,int ,int ,int ) ;
 int EAGAIN ;
 int EINVAL ;
 int ENOTTY ;
 int ERESTARTSYS ;
 scalar_t__ FRAME_READY ;
 int O_NONBLOCK ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_MAPPED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int current ;
 int find_earliest_filled_buffer (struct camera_data*) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ signal_pending (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int ioctl_dqbuf(void *arg,struct camera_data *cam, struct file *file)
{
 struct v4l2_buffer *buf = arg;
 int frame;

 if(buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
    buf->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;

 frame = find_earliest_filled_buffer(cam);

 if(frame < 0 && file->f_flags&O_NONBLOCK)
  return -EAGAIN;

 if(frame < 0) {

  struct framebuf *cb=cam->curbuff;
  mutex_unlock(&cam->busy_lock);
  wait_event_interruptible(cam->wq_stream,
      !cam->present ||
      (cb=cam->curbuff)->status == FRAME_READY);
  mutex_lock(&cam->busy_lock);
  if (signal_pending(current))
   return -ERESTARTSYS;
  if(!cam->present)
   return -ENOTTY;
  frame = cb->num;
 }


 buf->index = frame;
 buf->bytesused = cam->buffers[buf->index].length;
 buf->flags = V4L2_BUF_FLAG_MAPPED | V4L2_BUF_FLAG_DONE;
 buf->field = V4L2_FIELD_NONE;
 buf->timestamp = cam->buffers[buf->index].timestamp;
 buf->sequence = cam->buffers[buf->index].seq;
 buf->m.offset = cam->buffers[buf->index].data - cam->frame_buffer;
 buf->length = cam->frame_size;
 buf->input = 0;
 buf->reserved = 0;
 memset(&buf->timecode, 0, sizeof(buf->timecode));

 DBG("DQBUF #%d status:%d seq:%d length:%d\n", buf->index,
     cam->buffers[buf->index].status, buf->sequence, buf->bytesused);

 return 0;
}
