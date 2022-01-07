
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer {int dummy; } ;
struct vino_channel_settings {int capturing; int capture_lock; int fb_queue; } ;


 int EINVAL ;
 int dprintk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vino_capture (struct vino_channel_settings*,struct vino_framebuffer*) ;
 int vino_queue_get_incoming (int *,unsigned int*) ;
 struct vino_framebuffer* vino_queue_peek (int *,unsigned int*) ;

__attribute__((used)) static int vino_capture_next(struct vino_channel_settings *vcs, int start)
{
 struct vino_framebuffer *fb;
 unsigned int incoming, id;
 int err = 0;
 unsigned long flags;

 dprintk("vino_capture_next():\n");

 spin_lock_irqsave(&vcs->capture_lock, flags);

 if (start) {

  if (vcs->capturing) {
   spin_unlock_irqrestore(&vcs->capture_lock, flags);
   return 0;
  }

 } else {


  if (!vcs->capturing) {
   spin_unlock_irqrestore(&vcs->capture_lock, flags);
   return 0;
  }
 }

 err = vino_queue_get_incoming(&vcs->fb_queue, &incoming);
 if (err) {
  dprintk("vino_capture_next(): vino_queue_get_incoming() "
   "failed\n");
  err = -EINVAL;
  goto out;
 }
 if (incoming == 0) {
  dprintk("vino_capture_next(): no buffers available\n");
  goto out;
 }

 fb = vino_queue_peek(&vcs->fb_queue, &id);
 if (fb == ((void*)0)) {
  dprintk("vino_capture_next(): vino_queue_peek() failed\n");
  err = -EINVAL;
  goto out;
 }

 if (start) {
  vcs->capturing = 1;
 }

 spin_unlock_irqrestore(&vcs->capture_lock, flags);

 err = vino_capture(vcs, fb);

 return err;

out:
 vcs->capturing = 0;
 spin_unlock_irqrestore(&vcs->capture_lock, flags);

 return err;
}
