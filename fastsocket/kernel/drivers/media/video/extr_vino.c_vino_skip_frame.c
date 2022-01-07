
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer {int state_lock; int state; } ;
struct vino_channel_settings {int capture_lock; int fb_queue; } ;


 int VINO_FRAMEBUFFER_UNUSED ;
 int dprintk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vino_capture_next (struct vino_channel_settings*,int ) ;
 struct vino_framebuffer* vino_queue_peek (int *,unsigned int*) ;

__attribute__((used)) static void vino_skip_frame(struct vino_channel_settings *vcs)
{
 struct vino_framebuffer *fb;
 unsigned long flags;
 unsigned int id;

 spin_lock_irqsave(&vcs->capture_lock, flags);
 fb = vino_queue_peek(&vcs->fb_queue, &id);
 if (!fb) {
  spin_unlock_irqrestore(&vcs->capture_lock, flags);
  dprintk("vino_skip_frame(): vino_queue_peek() failed!\n");
  return;
 }
 spin_unlock_irqrestore(&vcs->capture_lock, flags);

 spin_lock_irqsave(&fb->state_lock, flags);
 fb->state = VINO_FRAMEBUFFER_UNUSED;
 spin_unlock_irqrestore(&fb->state_lock, flags);

 vino_capture_next(vcs, 0);
}
