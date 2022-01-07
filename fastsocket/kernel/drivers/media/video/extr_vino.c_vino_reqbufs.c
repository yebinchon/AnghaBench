
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_channel_settings {int fb_queue; scalar_t__ streaming; scalar_t__ reading; } ;
struct v4l2_requestbuffers {scalar_t__ memory; int count; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int dprintk (char*,...) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 int vino_capture_stop (struct vino_channel_settings*) ;
 scalar_t__ vino_is_capturing (struct vino_channel_settings*) ;
 int vino_queue_free (int *) ;
 scalar_t__ vino_queue_has_mapped_buffers (int *) ;
 int vino_queue_init (int *,int *) ;

__attribute__((used)) static int vino_reqbufs(struct file *file, void *__fh,
        struct v4l2_requestbuffers *rb)
{
 struct vino_channel_settings *vcs = video_drvdata(file);

 if (vcs->reading)
  return -EBUSY;


 if (rb->memory != V4L2_MEMORY_MMAP) {
  dprintk("type not mmap\n");
  return -EINVAL;
 }

 dprintk("count = %d\n", rb->count);
 if (rb->count > 0) {
  if (vino_is_capturing(vcs)) {
   dprintk("busy, capturing\n");
   return -EBUSY;
  }

  if (vino_queue_has_mapped_buffers(&vcs->fb_queue)) {
   dprintk("busy, buffers still mapped\n");
   return -EBUSY;
  } else {
   vcs->streaming = 0;
   vino_queue_free(&vcs->fb_queue);
   vino_queue_init(&vcs->fb_queue, &rb->count);
  }
 } else {
  vcs->streaming = 0;
  vino_capture_stop(vcs);
  vino_queue_free(&vcs->fb_queue);
 }

 return 0;
}
