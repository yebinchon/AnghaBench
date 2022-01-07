
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* driver; int irq_enabled; } ;
struct TYPE_2__ {int (* irq_postinstall ) (struct drm_device*) ;int (* irq_preinstall ) (struct drm_device*) ;int (* irq_uninstall ) (struct drm_device*) ;int (* vgaarb_irq ) (struct drm_device*,int) ;} ;


 int stub1 (struct drm_device*,int) ;
 int stub2 (struct drm_device*) ;
 int stub3 (struct drm_device*) ;
 int stub4 (struct drm_device*) ;

__attribute__((used)) static void drm_irq_vgaarb_nokms(void *cookie, bool state)
{
 struct drm_device *dev = cookie;

 if (dev->driver->vgaarb_irq) {
  dev->driver->vgaarb_irq(dev, state);
  return;
 }

 if (!dev->irq_enabled)
  return;

 if (state) {
  if (dev->driver->irq_uninstall)
   dev->driver->irq_uninstall(dev);
 } else {
  if (dev->driver->irq_preinstall)
   dev->driver->irq_preinstall(dev);
  if (dev->driver->irq_postinstall)
   dev->driver->irq_postinstall(dev);
 }
}
