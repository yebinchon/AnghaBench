
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vino_framebuffer {scalar_t__ map_count; int offset; int data_size; int size; int id; int timestamp; int frame_counter; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct vino_channel_settings {TYPE_2__ fb_queue; } ;
struct TYPE_4__ {int offset; } ;
struct v4l2_buffer {int flags; int timestamp; int sequence; int field; int length; int bytesused; TYPE_1__ m; int memory; int index; } ;
struct timeval {int dummy; } ;


 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_MAPPED ;
 int V4L2_BUF_FLAG_QUEUED ;
 int V4L2_BUF_FLAG_TIMECODE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_MEMORY_MMAP ;
 int V4L2_MEMORY_USERPTR ;
 scalar_t__ VINO_MEMORY_MMAP ;
 int dprintk (char*,int ,int ,int ,int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ vino_queue_incoming_contains (TYPE_2__*,int ) ;
 scalar_t__ vino_queue_outgoing_contains (TYPE_2__*,int ) ;

__attribute__((used)) static void vino_v4l2_get_buffer_status(struct vino_channel_settings *vcs,
     struct vino_framebuffer *fb,
     struct v4l2_buffer *b)
{
 if (vino_queue_outgoing_contains(&vcs->fb_queue,
      fb->id)) {
  b->flags &= ~V4L2_BUF_FLAG_QUEUED;
  b->flags |= V4L2_BUF_FLAG_DONE;
 } else if (vino_queue_incoming_contains(&vcs->fb_queue,
           fb->id)) {
  b->flags &= ~V4L2_BUF_FLAG_DONE;
  b->flags |= V4L2_BUF_FLAG_QUEUED;
 } else {
  b->flags &= ~(V4L2_BUF_FLAG_DONE |
         V4L2_BUF_FLAG_QUEUED);
 }

 b->flags &= ~(V4L2_BUF_FLAG_TIMECODE);

 if (fb->map_count > 0)
  b->flags |= V4L2_BUF_FLAG_MAPPED;

 b->index = fb->id;
 b->memory = (vcs->fb_queue.type == VINO_MEMORY_MMAP) ?
  V4L2_MEMORY_MMAP : V4L2_MEMORY_USERPTR;
 b->m.offset = fb->offset;
 b->bytesused = fb->data_size;
 b->length = fb->size;
 b->field = V4L2_FIELD_INTERLACED;
 b->sequence = fb->frame_counter;
 memcpy(&b->timestamp, &fb->timestamp,
        sizeof(struct timeval));


 dprintk("buffer %d: length = %d, bytesused = %d, offset = %d\n",
  fb->id, fb->size, fb->data_size, fb->offset);
}
