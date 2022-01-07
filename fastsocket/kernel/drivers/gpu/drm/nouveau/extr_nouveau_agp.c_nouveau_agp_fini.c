
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* agp; } ;
struct TYPE_2__ {scalar_t__ acquired; } ;


 int drm_agp_release (struct drm_device*) ;

void
nouveau_agp_fini(struct nouveau_drm *drm)
{





}
