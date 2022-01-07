
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
struct v4l2_buffer {scalar_t__ type; size_t index; int bytesused; int sequence; scalar_t__ flags; TYPE_2__ m; int timestamp; int memory; int length; } ;
struct camera_data {size_t num_frames; TYPE_1__* buffers; scalar_t__ mmapped; int frame_size; scalar_t__ frame_buffer; } ;
struct TYPE_3__ {int status; int seq; int timestamp; int length; scalar_t__ data; } ;


 int DBG (char*,size_t,scalar_t__,scalar_t__,int ,int ) ;
 int EINVAL ;




 scalar_t__ V4L2_BUF_FLAG_DONE ;
 scalar_t__ V4L2_BUF_FLAG_MAPPED ;
 scalar_t__ V4L2_BUF_FLAG_QUEUED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_MMAP ;

__attribute__((used)) static int ioctl_querybuf(void *arg,struct camera_data *cam)
{
 struct v4l2_buffer *buf = arg;

 if(buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
    buf->index > cam->num_frames)
  return -EINVAL;

 buf->m.offset = cam->buffers[buf->index].data - cam->frame_buffer;
 buf->length = cam->frame_size;

 buf->memory = V4L2_MEMORY_MMAP;

 if(cam->mmapped)
  buf->flags = V4L2_BUF_FLAG_MAPPED;
 else
  buf->flags = 0;

 switch (cam->buffers[buf->index].status) {
 case 131:
 case 130:
 case 129:
  buf->bytesused = 0;
  buf->flags = V4L2_BUF_FLAG_QUEUED;
  break;
 case 128:
  buf->bytesused = cam->buffers[buf->index].length;
  buf->timestamp = cam->buffers[buf->index].timestamp;
  buf->sequence = cam->buffers[buf->index].seq;
  buf->flags = V4L2_BUF_FLAG_DONE;
  break;
 }

 DBG("QUERYBUF index:%d offset:%d flags:%d seq:%d bytesused:%d\n",
      buf->index, buf->m.offset, buf->flags, buf->sequence,
      buf->bytesused);

 return 0;
}
