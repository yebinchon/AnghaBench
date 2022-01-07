
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int fbcon; } ;
struct drm_device {int dummy; } ;


 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_zfill (struct drm_device*,int ) ;

void nouveau_fbcon_zfill_all(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 nouveau_fbcon_zfill(dev, drm->fbcon);
}
