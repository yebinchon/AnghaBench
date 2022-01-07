
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int sgdma; int core_enable_disable_lock; int in_reset; } ;


 int atomic_inc_return (int *) ;
 int omap24xxcam_core_disable (struct omap24xxcam_device*) ;
 int omap24xxcam_sgdma_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap24xxcam_capture_stop(struct omap24xxcam_device *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->core_enable_disable_lock, flags);

 if (atomic_inc_return(&cam->in_reset) != 1) {
  spin_unlock_irqrestore(&cam->core_enable_disable_lock, flags);
  return;
 }

 omap24xxcam_core_disable(cam);

 spin_unlock_irqrestore(&cam->core_enable_disable_lock, flags);

 omap24xxcam_sgdma_sync(&cam->sgdma);
}
