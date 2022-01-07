
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_irq_install (struct drm_device*) ;

int
nouveau_irq_init(struct drm_device *dev)
{
 return drm_irq_install(dev);
}
