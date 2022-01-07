
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int max_vblank_count; } ;



int radeon_driver_irq_postinstall_kms(struct drm_device *dev)
{
 dev->max_vblank_count = 0x001fffff;
 return 0;
}
