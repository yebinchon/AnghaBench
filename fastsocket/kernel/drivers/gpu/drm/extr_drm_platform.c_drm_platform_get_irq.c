
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int platformdev; } ;


 int platform_get_irq (int ,int ) ;

__attribute__((used)) static int drm_platform_get_irq(struct drm_device *dev)
{
 return platform_get_irq(dev->platformdev, 0);
}
