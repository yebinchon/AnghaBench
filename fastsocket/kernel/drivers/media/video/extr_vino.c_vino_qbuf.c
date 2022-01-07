
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer {int dummy; } ;
struct vino_channel_settings {scalar_t__ streaming; scalar_t__ reading; } ;
struct v4l2_buffer {scalar_t__ memory; int index; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int dprintk (char*) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 struct vino_framebuffer* vino_capture_enqueue (struct vino_channel_settings*,int ) ;
 int vino_capture_next (struct vino_channel_settings*,int) ;
 int vino_v4l2_get_buffer_status (struct vino_channel_settings*,struct vino_framebuffer*,struct v4l2_buffer*) ;

__attribute__((used)) static int vino_qbuf(struct file *file, void *__fh,
     struct v4l2_buffer *b)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 struct vino_framebuffer *fb;
 int ret;

 if (vcs->reading)
  return -EBUSY;


 if (b->memory != V4L2_MEMORY_MMAP) {
  dprintk("type not mmap\n");
  return -EINVAL;
 }

 fb = vino_capture_enqueue(vcs, b->index);
 if (fb == ((void*)0))
  return -EINVAL;

 vino_v4l2_get_buffer_status(vcs, fb, b);

 if (vcs->streaming) {
  ret = vino_capture_next(vcs, 1);
  if (ret)
   return ret;
 }

 return 0;
}
