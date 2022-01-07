
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer {int dummy; } ;
struct vino_channel_settings {int fb_queue; scalar_t__ reading; } ;
struct v4l2_buffer {scalar_t__ index; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int dprintk (char*,...) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 struct vino_framebuffer* vino_queue_get_buffer (int *,scalar_t__) ;
 scalar_t__ vino_queue_get_length (int *) ;
 int vino_v4l2_get_buffer_status (struct vino_channel_settings*,struct vino_framebuffer*,struct v4l2_buffer*) ;

__attribute__((used)) static int vino_querybuf(struct file *file, void *__fh,
         struct v4l2_buffer *b)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 struct vino_framebuffer *fb;

 if (vcs->reading)
  return -EBUSY;


 if (b->index >= vino_queue_get_length(&vcs->fb_queue)) {
  dprintk("invalid index = %d\n",
         b->index);
  return -EINVAL;
 }

 fb = vino_queue_get_buffer(&vcs->fb_queue,
       b->index);
 if (fb == ((void*)0)) {
  dprintk("vino_queue_get_buffer() failed");
  return -EINVAL;
 }

 vino_v4l2_get_buffer_status(vcs, fb, b);

 return 0;
}
