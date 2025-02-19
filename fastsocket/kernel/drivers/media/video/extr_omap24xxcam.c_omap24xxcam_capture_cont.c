
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int core_enable_disable_lock; int in_reset; scalar_t__ sgdma_in_queue; int sgdma; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int omap24xxcam_core_enable (struct omap24xxcam_device*) ;
 int omap24xxcam_hwinit (struct omap24xxcam_device*) ;
 int omap24xxcam_sensor_if_enable (struct omap24xxcam_device*) ;
 int omap24xxcam_sgdma_process (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap24xxcam_capture_cont(struct omap24xxcam_device *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->core_enable_disable_lock, flags);

 if (atomic_read(&cam->in_reset) != 1)
  goto out;

 omap24xxcam_hwinit(cam);

 omap24xxcam_sensor_if_enable(cam);

 omap24xxcam_sgdma_process(&cam->sgdma);

 if (cam->sgdma_in_queue)
  omap24xxcam_core_enable(cam);

out:
 atomic_dec(&cam->in_reset);
 spin_unlock_irqrestore(&cam->core_enable_disable_lock, flags);
}
