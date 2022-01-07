
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int irq_enabled; int num_crtcs; TYPE_1__* driver; int pdev; int vbl_lock; int * last_vblank; scalar_t__* vblank_enabled; int * vbl_queue; int struct_mutex; } ;
struct TYPE_2__ {int (* irq_uninstall ) (struct drm_device*) ;int (* get_vblank_counter ) (struct drm_device*,int) ;} ;


 int DRIVER_HAVE_IRQ ;
 int DRIVER_MODESET ;
 int DRM_DEBUG (char*,int ) ;
 int DRM_WAKEUP (int *) ;
 int EINVAL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_dev_to_irq (struct drm_device*) ;
 int free_irq (int ,struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drm_device*,int) ;
 int stub2 (struct drm_device*) ;
 int vga_client_register (int ,int *,int *,int *) ;

int drm_irq_uninstall(struct drm_device *dev)
{
 unsigned long irqflags;
 int irq_enabled, i;

 if (!drm_core_check_feature(dev, DRIVER_HAVE_IRQ))
  return -EINVAL;

 mutex_lock(&dev->struct_mutex);
 irq_enabled = dev->irq_enabled;
 dev->irq_enabled = 0;
 mutex_unlock(&dev->struct_mutex);




 if (dev->num_crtcs) {
  spin_lock_irqsave(&dev->vbl_lock, irqflags);
  for (i = 0; i < dev->num_crtcs; i++) {
   DRM_WAKEUP(&dev->vbl_queue[i]);
   dev->vblank_enabled[i] = 0;
   dev->last_vblank[i] =
    dev->driver->get_vblank_counter(dev, i);
  }
  spin_unlock_irqrestore(&dev->vbl_lock, irqflags);
 }

 if (!irq_enabled)
  return -EINVAL;

 DRM_DEBUG("irq=%d\n", drm_dev_to_irq(dev));

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  vga_client_register(dev->pdev, ((void*)0), ((void*)0), ((void*)0));

 if (dev->driver->irq_uninstall)
  dev->driver->irq_uninstall(dev);

 free_irq(drm_dev_to_irq(dev), dev);

 return 0;
}
