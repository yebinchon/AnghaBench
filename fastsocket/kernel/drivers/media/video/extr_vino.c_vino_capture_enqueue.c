
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer {int dummy; } ;
struct vino_channel_settings {int capture_lock; int fb_queue; } ;


 int dprintk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_framebuffer* vino_queue_add (int *,unsigned int) ;

__attribute__((used)) static
struct vino_framebuffer *vino_capture_enqueue(struct
           vino_channel_settings *vcs,
           unsigned int index)
{
 struct vino_framebuffer *fb;
 unsigned long flags;

 dprintk("vino_capture_enqueue():\n");

 spin_lock_irqsave(&vcs->capture_lock, flags);

 fb = vino_queue_add(&vcs->fb_queue, index);
 if (fb == ((void*)0)) {
  dprintk("vino_capture_enqueue(): vino_queue_add() failed, "
   "queue full?\n");
  goto out;
 }
out:
 spin_unlock_irqrestore(&vcs->capture_lock, flags);

 return fb;
}
