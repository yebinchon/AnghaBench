
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_irq_uninstall (struct drm_device*) ;

void
nouveau_irq_fini(struct drm_device *dev)
{
 drm_irq_uninstall(dev);
}
