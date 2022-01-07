
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
struct v4l2_buffer {size_t index; int length; int sequence; int timestamp; int field; void* memory; TYPE_1__ m; int flags; } ;
struct usbvision_frame {scalar_t__ grabstate; int sequence; int timestamp; } ;
struct TYPE_4__ {int bytes_per_pixel; } ;
struct usb_usbvision {size_t num_frames; int curwidth; int curheight; struct usbvision_frame* frame; TYPE_2__ palette; int max_frame_size; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int PAGE_ALIGN (int ) ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_MAPPED ;
 int V4L2_BUF_FLAG_QUEUED ;
 int V4L2_FIELD_NONE ;
 void* V4L2_MEMORY_MMAP ;
 scalar_t__ frame_state_done ;
 scalar_t__ frame_state_ready ;
 scalar_t__ frame_state_unused ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querybuf(struct file *file,
       void *priv, struct v4l2_buffer *vb)
{
 struct usb_usbvision *usbvision = video_drvdata(file);
 struct usbvision_frame *frame;



 if (vb->index >= usbvision->num_frames)
  return -EINVAL;

 vb->flags = 0;
 frame = &usbvision->frame[vb->index];
 if (frame->grabstate >= frame_state_ready)
  vb->flags |= V4L2_BUF_FLAG_QUEUED;
 if (frame->grabstate >= frame_state_done)
  vb->flags |= V4L2_BUF_FLAG_DONE;
 if (frame->grabstate == frame_state_unused)
  vb->flags |= V4L2_BUF_FLAG_MAPPED;
 vb->memory = V4L2_MEMORY_MMAP;

 vb->m.offset = vb->index * PAGE_ALIGN(usbvision->max_frame_size);

 vb->memory = V4L2_MEMORY_MMAP;
 vb->field = V4L2_FIELD_NONE;
 vb->length = usbvision->curwidth *
  usbvision->curheight *
  usbvision->palette.bytes_per_pixel;
 vb->timestamp = usbvision->frame[vb->index].timestamp;
 vb->sequence = usbvision->frame[vb->index].sequence;
 return 0;
}
