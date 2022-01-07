
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_framebuffer {int state; scalar_t__ data_format; int state_lock; } ;
struct vino_channel_settings {int dummy; } ;
struct TYPE_2__ {int vino_lock; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ VINO_DATA_FMT_RGB32 ;


 int VINO_FRAMEBUFFER_UNUSED ;
 int dprintk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vino_clear_interrupt (struct vino_channel_settings*) ;
 int vino_convert_to_rgba (struct vino_framebuffer*) ;
 int vino_dma_stop (struct vino_channel_settings*) ;
 TYPE_1__* vino_drvdata ;
 scalar_t__ vino_pixel_conversion ;
 int vino_sync_buffer (struct vino_framebuffer*) ;

__attribute__((used)) static int vino_check_buffer(struct vino_channel_settings *vcs,
        struct vino_framebuffer *fb)
{
 int err = 0;
 unsigned long flags;

 dprintk("vino_check_buffer():\n");

 spin_lock_irqsave(&fb->state_lock, flags);
 switch (fb->state) {
 case 129:
  err = -EIO;
  break;
 case 128:
  vino_sync_buffer(fb);
  fb->state = VINO_FRAMEBUFFER_UNUSED;
  break;
 default:
  err = -EINVAL;
 }
 spin_unlock_irqrestore(&fb->state_lock, flags);

 if (!err) {
  if (vino_pixel_conversion
      && (fb->data_format == VINO_DATA_FMT_RGB32)) {
   vino_convert_to_rgba(fb);
  }
 } else if (err && (err != -EINVAL)) {
  dprintk("vino_check_buffer(): buffer not ready\n");

  spin_lock_irqsave(&vino_drvdata->vino_lock, flags);
  vino_dma_stop(vcs);
  vino_clear_interrupt(vcs);
  spin_unlock_irqrestore(&vino_drvdata->vino_lock, flags);
 }

 return err;
}
