
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int client; } ;
struct TYPE_2__ {scalar_t__ num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int nouveau_accel_fini (struct nouveau_drm*) ;
 int nouveau_agp_fini (struct nouveau_drm*) ;
 int nouveau_bios_takedown (struct drm_device*) ;
 int nouveau_cli_destroy (int *) ;
 int nouveau_display_destroy (struct drm_device*) ;
 int nouveau_display_fini (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_fini (struct drm_device*) ;
 int nouveau_irq_fini (struct drm_device*) ;
 int nouveau_pm_fini (struct drm_device*) ;
 int nouveau_ttm_fini (struct nouveau_drm*) ;
 int nouveau_vga_fini (struct nouveau_drm*) ;

__attribute__((used)) static int
nouveau_drm_unload(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 nouveau_fbcon_fini(dev);
 nouveau_accel_fini(drm);

 nouveau_pm_fini(dev);

 if (dev->mode_config.num_crtc)
  nouveau_display_fini(dev);
 nouveau_display_destroy(dev);

 nouveau_irq_fini(dev);
 nouveau_bios_takedown(dev);

 nouveau_ttm_fini(drm);
 nouveau_agp_fini(drm);
 nouveau_vga_fini(drm);

 nouveau_cli_destroy(&drm->client);
 return 0;
}
