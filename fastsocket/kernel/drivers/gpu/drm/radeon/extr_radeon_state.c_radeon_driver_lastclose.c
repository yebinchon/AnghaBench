
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev_private; } ;


 int PCIGART_FILE_PRIV ;
 int radeon_do_release (struct drm_device*) ;
 int radeon_surfaces_release (int ,int ) ;

void radeon_driver_lastclose(struct drm_device *dev)
{
 radeon_surfaces_release(PCIGART_FILE_PRIV, dev->dev_private);
 radeon_do_release(dev);
}
