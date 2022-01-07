
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int * backlight; } ;
struct drm_device {int dummy; } ;


 int backlight_device_unregister (int *) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

void
nouveau_backlight_exit(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (drm->backlight) {
  backlight_device_unregister(drm->backlight);
  drm->backlight = ((void*)0);
 }
}
