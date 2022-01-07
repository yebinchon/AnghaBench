
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_channel_settings {int capture_lock; int fb_queue; scalar_t__ capturing; } ;
struct TYPE_2__ {int vino_lock; } ;


 int dprintk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vino_clear_interrupt (struct vino_channel_settings*) ;
 int vino_dma_stop (struct vino_channel_settings*) ;
 TYPE_1__* vino_drvdata ;
 scalar_t__ vino_queue_get_incoming (int *,unsigned int*) ;
 scalar_t__ vino_queue_get_outgoing (int *,unsigned int*) ;
 int vino_queue_remove (int *,unsigned int*) ;
 int vino_queue_transfer (int *) ;

__attribute__((used)) static void vino_capture_stop(struct vino_channel_settings *vcs)
{
 unsigned int incoming = 0, outgoing = 0, id;
 unsigned long flags, flags2;

 dprintk("vino_capture_stop():\n");

 spin_lock_irqsave(&vcs->capture_lock, flags);


 vcs->capturing = 0;

 spin_lock_irqsave(&vino_drvdata->vino_lock, flags2);

 vino_dma_stop(vcs);
 vino_clear_interrupt(vcs);

 spin_unlock_irqrestore(&vino_drvdata->vino_lock, flags2);


 if (vino_queue_get_incoming(&vcs->fb_queue, &incoming)) {
  dprintk("vino_capture_stop(): "
   "vino_queue_get_incoming() failed\n");
  goto out;
 }
 while (incoming > 0) {
  vino_queue_transfer(&vcs->fb_queue);

  if (vino_queue_get_incoming(&vcs->fb_queue, &incoming)) {
   dprintk("vino_capture_stop(): "
    "vino_queue_get_incoming() failed\n");
   goto out;
  }
 }

 if (vino_queue_get_outgoing(&vcs->fb_queue, &outgoing)) {
  dprintk("vino_capture_stop(): "
   "vino_queue_get_outgoing() failed\n");
  goto out;
 }
 while (outgoing > 0) {
  vino_queue_remove(&vcs->fb_queue, &id);

  if (vino_queue_get_outgoing(&vcs->fb_queue, &outgoing)) {
   dprintk("vino_capture_stop(): "
    "vino_queue_get_outgoing() failed\n");
   goto out;
  }
 }

out:
 spin_unlock_irqrestore(&vcs->capture_lock, flags);
}
